/**
 * scanner.js — Hot Wheels Collector
 * Leitor de Código de Barras via Câmera Mobile (EAN-13, EAN-8, UPC-A, UPC-E, CODE-128).
 *
 * FLUXO: Câmera -> Leitura -> Normalização -> Supabase car_identifiers -> detalhes.html?id=...
 */

'use strict';

const ScannerModule = (() => {
  let _html5QrCode = null;
  let _isScanningLocked = false;
  let _activeModal = null;

  /**
   * Normalizar código de barras mantendo TIPO STRING e ZEROS À ESQUERDA
   */
  function normalizeBarcode(rawCode) {
    if (!rawCode) return '';
    return String(rawCode).trim().replace(/[^\w\d-]/g, '');
  }

  /**
   * Criar Modal de Escaneamento
   */
  function openScannerModal() {
    closeScannerModal();
    _isScanningLocked = false;

    const modalOverlay = document.createElement('div');
    modalOverlay.id = 'hw-scanner-modal-overlay';
    modalOverlay.style.cssText = `
      position: fixed; inset: 0; z-index: 9999;
      background: rgba(0, 0, 0, 0.85); backdrop-filter: blur(8px);
      display: flex; align-items: center; justify-content: center;
      padding: var(--space-4); animation: fadeIn 0.2s ease-out;
    `;

    const modalBox = document.createElement('div');
    modalBox.style.cssText = `
      background: var(--bg-surface); border: 1px solid var(--border-color);
      border-radius: var(--radius-xl); width: 100%; max-width: 480px;
      padding: var(--space-6); display: flex; flex-direction: column; gap: var(--space-4);
      box-shadow: var(--shadow-2xl); text-align: center;
    `;

    // Header
    const header = document.createElement('div');
    header.style.cssText = 'display:flex;align-items:center;justify-content:space-between;';
    const title = document.createElement('h3');
    title.style.cssText = 'font-weight:800;font-size:var(--text-lg);display:flex;align-items:center;gap:var(--space-2);margin:0;';
    title.textContent = '📷 Escanear Código de Barras';
    
    const closeBtn = document.createElement('button');
    closeBtn.className = 'icon-btn';
    closeBtn.textContent = '✕';
    closeBtn.addEventListener('click', closeScannerModal);

    header.appendChild(title);
    header.appendChild(closeBtn);
    modalBox.appendChild(header);

    // Viewport de Câmera
    const readerDiv = document.createElement('div');
    readerDiv.id = 'hw-barcode-reader';
    readerDiv.style.cssText = `
      width: 100%; min-height: 260px; background: var(--bg-elevated);
      border-radius: var(--radius-lg); overflow: hidden; border: 2px dashed var(--color-brand);
      position: relative; display: flex; align-items: center; justify-content: center;
    `;
    modalBox.appendChild(readerDiv);

    // Instruções
    const hint = document.createElement('p');
    hint.className = 'text-secondary text-xs';
    hint.id = 'hw-scanner-hint';
    hint.textContent = 'Aponte a câmera para o código de barras (EAN-13, UPC-A, etc.) da embalagem Hot Wheels.';
    modalBox.appendChild(hint);

    // Divisor Manual
    const manualWrap = document.createElement('div');
    manualWrap.style.cssText = 'display:flex;gap:var(--space-2);margin-top:var(--space-2);';
    
    const manualInput = document.createElement('input');
    manualInput.type = 'text';
    manualInput.id = 'hw-manual-barcode-input';
    manualInput.className = 'input';
    manualInput.placeholder = 'Ou digite o código de barras...';
    manualInput.style.cssText = 'font-size:var(--text-xs);padding:var(--space-2) var(--space-3);';

    const manualBtn = document.createElement('button');
    manualBtn.className = 'btn btn-secondary btn-sm';
    manualBtn.type = 'button';
    manualBtn.textContent = '🔎 Buscar';
    manualBtn.addEventListener('click', async () => {
      const code = normalizeBarcode(manualInput.value);
      if (code) await handleBarcodeScanned(code);
    });

    manualWrap.appendChild(manualInput);
    manualWrap.appendChild(manualBtn);
    modalBox.appendChild(manualWrap);

    // Actions
    const cancelBtn = document.createElement('button');
    cancelBtn.className = 'btn btn-secondary btn-full';
    cancelBtn.type = 'button';
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
      if (hintEl) hintEl.textContent = 'Scanner de câmera indisponível offline. Utilize a busca manual abaixo.';
      return;
    }

    try {
      _html5QrCode = new Html5Qrcode('hw-barcode-reader');

      const config = {
        fps: 10,
        qrbox: { width: 280, height: 160 },
        aspectRatio: 1.777,
        formatsToSupport: [
          Html5QrcodeSupportedFormats.EAN_13,
          Html5QrcodeSupportedFormats.EAN_8,
          Html5QrcodeSupportedFormats.UPC_A,
          Html5QrcodeSupportedFormats.UPC_E,
          Html5QrcodeSupportedFormats.CODE_128,
          Html5QrcodeSupportedFormats.CODE_39
        ]
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
          }
        },
        () => {} // Ignorar frames em branco
      );
    } catch (err) {
      console.warn('[Scanner] Erro na câmera:', err);
      if (hintEl) {
        hintEl.textContent = 'Permissão para câmera negada. Autorize o acesso à câmera nas configurações do navegador ou utilize a busca manual.';
        hintEl.style.color = 'var(--color-danger)';
      }
    }
  }

  /**
   * Processar código de barras detectado
   */
  async function handleBarcodeScanned(barcode) {
    console.log('[Scanner] Código lido:', barcode);

    if (window.HW?.toast) {
      window.HW.toast.info('Código Lido', `Buscando código ${barcode} no Supabase...`);
    }

    const { data: car, error } = await window.HW.services.catalog.getCarByIdentifier(barcode);

    if (car && car.id) {
      // ENCONTROU -> Redirecionar para detalhes.html?id=...
      if (window.HW?.toast) {
        window.HW.toast.success('✅ Carrinho Encontrado!', car.name);
      }
      stopCamera();
      closeScannerModal();
      window.location.href = `./detalhes.html?id=${encodeURIComponent(car.id)}`;
    } else {
      // NÃO ENCONTROU -> Exibir Modal Amigável
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
      background: rgba(0, 0, 0, 0.85); backdrop-filter: blur(8px);
      display: flex; align-items: center; justify-content: center;
      padding: var(--space-4); animation: fadeIn 0.2s ease-out;
    `;

    const box = document.createElement('div');
    box.style.cssText = `
      background: var(--bg-surface); border: 1px solid var(--border-color);
      border-radius: var(--radius-xl); width: 100%; max-width: 440px;
      padding: var(--space-6); text-align: center; display: flex; flex-direction: column; gap: var(--space-4);
    `;

    const icon = document.createElement('div');
    icon.style.fontSize = '48px';
    icon.textContent = '❌';
    box.appendChild(icon);

    const title = document.createElement('h3');
    title.style.cssText = 'font-weight:800;font-size:var(--text-xl);margin:0;';
    title.textContent = 'CÓDIGO NÃO ENCONTRADO';
    box.appendChild(title);

    const codeBox = document.createElement('div');
    codeBox.style.cssText = 'background:var(--bg-elevated);padding:var(--space-3);border-radius:var(--radius-md);';
    const codeLabel = document.createElement('div');
    codeLabel.className = 'text-xs text-secondary';
    codeLabel.textContent = 'Código de barras lido:';
    const codeVal = document.createElement('div');
    codeVal.className = 'font-mono font-bold text-lg text-brand';
    codeVal.textContent = barcode; // STRING preservando zeros à esquerda
    codeBox.appendChild(codeLabel);
    codeBox.appendChild(codeVal);
    box.appendChild(codeBox);

    const msg = document.createElement('p');
    msg.className = 'text-secondary text-sm';
    msg.textContent = 'Esse código de barras ainda não está cadastrado no catálogo do HotW Collector.';
    box.appendChild(msg);

    const actions = document.createElement('div');
    actions.style.cssText = 'display:flex;flex-direction:column;gap:var(--space-2);';

    // Botão 1: Cadastrar carrinho
    const registerBtn = document.createElement('button');
    registerBtn.className = 'btn btn-primary btn-full';
    registerBtn.textContent = '➕ Cadastrar carrinho com este código';
    registerBtn.addEventListener('click', () => {
      closeNotFoundModal();
      window.location.href = `./adicionar.html?barcode=${encodeURIComponent(barcode)}`;
    });
    actions.appendChild(registerBtn);

    // Botão 2: Escanear novamente
    const rescanBtn = document.createElement('button');
    rescanBtn.className = 'btn btn-secondary btn-full';
    rescanBtn.textContent = '📷 Escanear outro código';
    rescanBtn.addEventListener('click', () => {
      closeNotFoundModal();
      openScannerModal();
    });
    actions.appendChild(rescanBtn);

    // Botão 3: Fechar
    const closeBtn = document.createElement('button');
    closeBtn.className = 'btn btn-secondary btn-full';
    closeBtn.textContent = 'Fechar';
    closeBtn.addEventListener('click', closeNotFoundModal);
    actions.appendChild(closeBtn);

    box.appendChild(actions);
    overlay.appendChild(box);
    document.body.appendChild(overlay);
  }

  function stopCamera() {
    if (_html5QrCode) {
      try {
        _html5QrCode.stop().then(() => _html5QrCode.clear()).catch(() => {});
      } catch (e) {}
      _html5QrCode = null;
    }
  }

  function closeScannerModal() {
    stopCamera();
    if (_activeModal) {
      _activeModal.remove();
      _activeModal = null;
    }
  }

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

window.HW = Object.assign(window.HW || {}, {
  scanner: ScannerModule
});
