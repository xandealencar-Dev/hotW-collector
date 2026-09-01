/**
 * scanner.js — Hot Wheels Collector / PortableGarage
 * Leitor de Código de Barras via Câmera Mobile (EAN-13, EAN-8, UPC-A, UPC-E, CODE-128, CODE-39).
 *
 * FLUXO: Câmera -> Leitura -> Normalização (String) -> Busca Catálogo/Supabase -> Redirecionamento
 */

'use strict';

const ScannerModule = (() => {
  let _html5QrCode = null;
  let _isScanningLocked = false;
  let _activeModal = null;

  /**
   * Resolver caminhos relativos de páginas dependendo da localização atual
   */
  function resolvePagePath(relativePath) {
    const path = window.location.pathname;
    if (path.includes('/pages/admin/')) {
      return '../../' + relativePath;
    }
    if (path.includes('/pages/')) {
      return './' + relativePath.replace('pages/', '');
    }
    return relativePath;
  }

  /**
   * Normalizar código de barras mantendo TIPO STRING e ZEROS À ESQUERDA
   */
  function normalizeBarcode(rawCode) {
    if (!rawCode) return '';
    return String(rawCode).trim().replace(/[^\w\d-]/g, '');
  }

  /**
   * Criar Modal de Escaneamento Mobile-First
   */
  function openScannerModal() {
    closeScannerModal();
    _isScanningLocked = false;

    // Overlay principal com escurecimento e blur
    const modalOverlay = document.createElement('div');
    modalOverlay.id = 'hw-scanner-modal-overlay';
    modalOverlay.style.cssText = `
      position: fixed; inset: 0; z-index: 9999;
      background: rgba(15, 23, 42, 0.88); backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      display: flex; align-items: center; justify-content: center;
      padding: var(--space-4, 16px); animation: fadeIn 0.25s ease-out;
    `;

    // Box Container
    const modalBox = document.createElement('div');
    modalBox.style.cssText = `
      background: var(--bg-surface, #1e293b);
      border: 1px solid var(--border-color, rgba(255,255,255,0.1));
      border-radius: var(--radius-xl, 20px);
      width: 100%; max-width: 440px;
      padding: var(--space-5, 20px);
      display: flex; flex-direction: column; gap: var(--space-4, 16px);
      box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
      text-align: center;
      max-height: 90vh; overflow-y: auto;
    `;

    // Header da Modal
    const header = document.createElement('div');
    header.style.cssText = 'display:flex;align-items:center;justify-content:space-between;padding-bottom:4px;';

    const titleWrap = document.createElement('div');
    titleWrap.style.cssText = 'display:flex;align-items:center;gap:10px;';

    const iconBadge = document.createElement('span');
    iconBadge.style.cssText = 'font-size:22px;';
    iconBadge.textContent = '📷';

    const title = document.createElement('h3');
    title.style.cssText = 'font-weight:800;font-size:var(--text-lg, 1.125rem);color:var(--text-primary, #f8fafc);margin:0;letter-spacing:-0.01em;';
    title.textContent = 'Escanear Hot Wheels';

    titleWrap.appendChild(iconBadge);
    titleWrap.appendChild(title);

    const closeBtn = document.createElement('button');
    closeBtn.className = 'icon-btn';
    closeBtn.setAttribute('aria-label', 'Fechar leitor');
    closeBtn.style.cssText = 'width:36px;height:36px;border-radius:50%;border:none;background:var(--bg-elevated, #334155);color:var(--text-primary, #fff);font-size:16px;cursor:pointer;display:flex;align-items:center;justify-content:center;';
    closeBtn.textContent = '✕';
    closeBtn.addEventListener('click', closeScannerModal);

    header.appendChild(titleWrap);
    header.appendChild(closeBtn);
    modalBox.appendChild(header);

    // Container do Viewport de Câmera
    const readerDiv = document.createElement('div');
    readerDiv.id = 'hw-barcode-reader';
    readerDiv.style.cssText = `
      width: 100%; min-height: 240px; background: #000;
      border-radius: var(--radius-lg, 14px); overflow: hidden;
      border: 2px solid var(--color-brand-primary, #e8302a);
      position: relative; display: flex; align-items: center; justify-content: center;
      box-shadow: inset 0 0 20px rgba(0,0,0,0.8);
    `;
    modalBox.appendChild(readerDiv);

    // Mensagem / Instrução de uso
    const hint = document.createElement('p');
    hint.className = 'text-secondary text-xs';
    hint.id = 'hw-scanner-hint';
    hint.style.cssText = 'font-size:0.825rem;color:var(--text-secondary, #94a3b8);margin:0;line-height:1.4;';
    hint.textContent = 'Aponte a câmera para o código de barras (EAN-13, EAN-8, UPC-A, UPC-E, CODE-128) da embalagem Hot Wheels.';
    modalBox.appendChild(hint);

    // Área de Busca Manual
    const manualWrap = document.createElement('div');
    manualWrap.style.cssText = 'display:flex;gap:8px;margin-top:4px;';

    const manualInput = document.createElement('input');
    manualInput.type = 'text';
    manualInput.id = 'hw-manual-barcode-input';
    manualInput.className = 'input';
    manualInput.placeholder = 'Ou digite o código manualmente...';
    manualInput.style.cssText = 'flex:1;font-size:0.875rem;padding:10px 14px;background:var(--bg-elevated, #0f172a);border:1px solid var(--border-default, #334155);border-radius:var(--radius-md, 8px);color:var(--text-primary, #fff);outline:none;';

    manualInput.addEventListener('keypress', async (e) => {
      if (e.key === 'Enter') {
        e.preventDefault();
        manualBtn.click();
      }
    });

    const manualBtn = document.createElement('button');
    manualBtn.className = 'btn btn-secondary';
    manualBtn.type = 'button';
    manualBtn.style.cssText = 'padding:10px 16px;white-space:nowrap;font-size:0.875rem;font-weight:600;';
    manualBtn.textContent = '🔎 Buscar';
    manualBtn.addEventListener('click', async () => {
      const code = normalizeBarcode(manualInput.value);
      if (code) {
        await handleBarcodeScanned(code);
      } else if (window.HW?.toast) {
        window.HW.toast.error('Código Inválido', 'Por favor, digite um código de barras válido.');
      }
    });

    manualWrap.appendChild(manualInput);
    manualWrap.appendChild(manualBtn);
    modalBox.appendChild(manualWrap);

    // Botão Cancelar
    const cancelBtn = document.createElement('button');
    cancelBtn.className = 'btn btn-secondary btn-full';
    cancelBtn.type = 'button';
    cancelBtn.style.cssText = 'margin-top:4px;padding:10px;font-size:0.875rem;';
    cancelBtn.textContent = 'Cancelar';
    cancelBtn.addEventListener('click', closeScannerModal);
    modalBox.appendChild(cancelBtn);

    modalOverlay.appendChild(modalBox);
    document.body.appendChild(modalOverlay);
    _activeModal = modalOverlay;

    // Inicializar Câmera
    initCameraScanner();
  }

  /**
   * Inicializar Câmera via Html5Qrcode
   */
  async function initCameraScanner() {
    const hintEl = document.getElementById('hw-scanner-hint');

    if (typeof Html5Qrcode === 'undefined') {
      if (hintEl) {
        hintEl.textContent = '⚠️ Biblioteca do scanner indisponível. Utilize a busca manual acima.';
        hintEl.style.color = 'var(--color-warning, #f59e0b)';
      }
      return;
    }

    try {
      _html5QrCode = new Html5Qrcode('hw-barcode-reader');

      // Formatos de códigos de barras suportados pelos carrinhos Hot Wheels / Mattel
      const supportedFormats = [
        typeof Html5QrcodeSupportedFormats !== 'undefined' ? Html5QrcodeSupportedFormats.EAN_13 : undefined,
        typeof Html5QrcodeSupportedFormats !== 'undefined' ? Html5QrcodeSupportedFormats.EAN_8 : undefined,
        typeof Html5QrcodeSupportedFormats !== 'undefined' ? Html5QrcodeSupportedFormats.UPC_A : undefined,
        typeof Html5QrcodeSupportedFormats !== 'undefined' ? Html5QrcodeSupportedFormats.UPC_E : undefined,
        typeof Html5QrcodeSupportedFormats !== 'undefined' ? Html5QrcodeSupportedFormats.CODE_128 : undefined,
        typeof Html5QrcodeSupportedFormats !== 'undefined' ? Html5QrcodeSupportedFormats.CODE_39 : undefined,
      ].filter(f => f !== undefined);

      const config = {
        fps: 10,
        qrbox: (viewfinderWidth, viewfinderHeight) => ({
          width: Math.min(Math.floor(viewfinderWidth * 0.85), 300),
          height: Math.min(Math.floor(viewfinderHeight * 0.6), 180)
        }),
        aspectRatio: 1.7778,
        ...(supportedFormats.length ? { formatsToSupport: supportedFormats } : {})
      };

      await _html5QrCode.start(
        { facingMode: 'environment' },
        config,
        async (decodedText) => {
          if (_isScanningLocked) return;
          _isScanningLocked = true;
          const cleanCode = normalizeBarcode(decodedText);
          if (cleanCode) {
            await handleBarcodeScanned(cleanCode);
          } else {
            _isScanningLocked = false;
          }
        },
        () => {} // Ignorar frames sem código
      );

    } catch (err) {
      console.warn('[Scanner] Erro ao abrir a câmera:', err);
      if (hintEl) {
        hintEl.textContent = '⚠️ Permissão de câmera negada ou indisponível no navegador. Digite o código manualmente acima.';
        hintEl.style.color = 'var(--color-danger, #ef4444)';
      }
    }
  }

  /**
   * Processar código de barras detectado ou digitado
   */
  async function handleBarcodeScanned(barcode) {
    console.log('[Scanner] Processando código de barras:', barcode);

    if (window.HW?.toast) {
      window.HW.toast.info('Código Lido', `Buscando código ${barcode} no catálogo...`);
    }

    let result = { data: null, error: null };
    try {
      if (window.HW?.services?.catalog?.getCarByIdentifier) {
        result = await window.HW.services.catalog.getCarByIdentifier(barcode);
      }
    } catch (err) {
      console.error('[Scanner] Erro na consulta do catálogo:', err);
    }

    const car = result?.data;

    if (car && (car.id || car.car_id)) {
      const carId = car.id || car.car_id;
      if (window.HW?.toast) {
        window.HW.toast.success('✅ Carrinho Encontrado!', car.name || 'Redirecionando...');
      }
      stopCamera();
      closeScannerModal();
      const targetUrl = resolvePagePath('pages/detalhes.html') + `?id=${encodeURIComponent(carId)}`;
      window.location.href = targetUrl;
    } else {
      stopCamera();
      showNotFoundModal(barcode);
    }
  }

  /**
   * Exibir Modal "Código Não Encontrado"
   */
  function showNotFoundModal(barcode) {
    closeScannerModal();

    const overlay = document.createElement('div');
    overlay.id = 'hw-not-found-modal-overlay';
    overlay.style.cssText = `
      position: fixed; inset: 0; z-index: 9999;
      background: rgba(15, 23, 42, 0.88); backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      display: flex; align-items: center; justify-content: center;
      padding: var(--space-4, 16px); animation: fadeIn 0.2s ease-out;
    `;

    const box = document.createElement('div');
    box.style.cssText = `
      background: var(--bg-surface, #1e293b);
      border: 1px solid var(--border-color, rgba(255,255,255,0.1));
      border-radius: var(--radius-xl, 20px);
      width: 100%; max-width: 420px;
      padding: var(--space-6, 24px); text-align: center;
      display: flex; flex-direction: column; gap: var(--space-4, 16px);
      box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
    `;

    const icon = document.createElement('div');
    icon.style.cssText = 'font-size:44px;line-height:1;margin-bottom:-4px;';
    icon.textContent = '❌';
    box.appendChild(icon);

    const title = document.createElement('h3');
    title.style.cssText = 'font-weight:800;font-size:var(--text-lg, 1.25rem);color:var(--text-primary, #fff);margin:0;';
    title.textContent = 'CÓDIGO NÃO ENCONTRADO';
    box.appendChild(title);

    const codeBox = document.createElement('div');
    codeBox.style.cssText = 'background:var(--bg-elevated, #0f172a);padding:12px 16px;border-radius:var(--radius-md, 10px);border:1px solid var(--border-default, #334155);';
    
    const codeLabel = document.createElement('div');
    codeLabel.style.cssText = 'font-size:0.75rem;color:var(--text-secondary, #94a3b8);margin-bottom:2px;';
    codeLabel.textContent = 'Código de barras lido:';
    
    const codeVal = document.createElement('div');
    codeVal.style.cssText = 'font-family:monospace;font-weight:700;font-size:1.125rem;color:var(--color-brand-primary, #e8302a);letter-spacing:0.05em;';
    codeVal.textContent = barcode; // Preserva zeros à esquerda como String
    
    codeBox.appendChild(codeLabel);
    codeBox.appendChild(codeVal);
    box.appendChild(codeBox);

    const msg = document.createElement('p');
    msg.style.cssText = 'font-size:0.875rem;color:var(--text-secondary, #94a3b8);margin:0;line-height:1.4;';
    msg.textContent = 'Esse código de barras ainda não está cadastrado no catálogo do PortableGarage.';
    box.appendChild(msg);

    const actions = document.createElement('div');
    actions.style.cssText = 'display:flex;flex-direction:column;gap:8px;margin-top:4px;';

    // Botão 1: Cadastrar carrinho
    const registerBtn = document.createElement('button');
    registerBtn.className = 'btn btn-primary btn-full';
    registerBtn.style.cssText = 'padding:12px;font-size:0.875rem;font-weight:700;';
    registerBtn.textContent = '➕ Cadastrar carrinho com este código';
    registerBtn.addEventListener('click', () => {
      closeNotFoundModal();
      const addUrl = resolvePagePath('pages/adicionar.html') + `?barcode=${encodeURIComponent(barcode)}`;
      window.location.href = addUrl;
    });
    actions.appendChild(registerBtn);

    // Botão 2: Escanear novamente
    const rescanBtn = document.createElement('button');
    rescanBtn.className = 'btn btn-secondary btn-full';
    rescanBtn.style.cssText = 'padding:10px;font-size:0.875rem;';
    rescanBtn.textContent = '📷 Escanear outro código';
    rescanBtn.addEventListener('click', () => {
      closeNotFoundModal();
      openScannerModal();
    });
    actions.appendChild(rescanBtn);

    // Botão 3: Fechar
    const closeBtn = document.createElement('button');
    closeBtn.className = 'btn btn-secondary btn-full';
    closeBtn.style.cssText = 'padding:10px;font-size:0.875rem;';
    closeBtn.textContent = 'Fechar';
    closeBtn.addEventListener('click', closeNotFoundModal);
    actions.appendChild(closeBtn);

    box.appendChild(actions);
    overlay.appendChild(box);
    document.body.appendChild(overlay);
  }

  /**
   * Parar totalmente a câmera e liberar recursos
   */
  function stopCamera() {
    if (_html5QrCode) {
      try {
        _html5QrCode.stop().then(() => {
          try { _html5QrCode.clear(); } catch (e) {}
        }).catch(() => {
          try { _html5QrCode.clear(); } catch (e) {}
        });
      } catch (e) {}
      _html5QrCode = null;
    }

    // Parar forçadamente todas as faixas de mídia da câmera ativas no DOM
    try {
      const videoElements = document.querySelectorAll('#hw-barcode-reader video');
      videoElements.forEach(video => {
        if (video.srcObject && video.srcObject.getTracks) {
          video.srcObject.getTracks().forEach(track => track.stop());
        }
        video.srcObject = null;
      });
    } catch (e) {}
  }

  /**
   * Fechar Modal de Escaneamento
   */
  function closeScannerModal() {
    stopCamera();
    if (_activeModal) {
      _activeModal.remove();
      _activeModal = null;
    }
  }

  /**
   * Fechar Modal "Não Encontrado"
   */
  function closeNotFoundModal() {
    const el = document.getElementById('hw-not-found-modal-overlay');
    if (el) el.remove();
  }

  return {
    openScannerModal,
    closeScannerModal,
    normalizeBarcode
  };
})();

// Expor no namespace global HW
window.HW = Object.assign(window.HW || {}, {
  scanner: ScannerModule
});
