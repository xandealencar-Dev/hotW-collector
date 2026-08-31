/**
 * pwa.js — PortableGarage PWA Installation & Service Worker Manager
 * Implementação resiliente para Android / Chrome / iOS / Desktop no GitHub Pages.
 */

'use strict';

(function () {
  let deferredPrompt = null;
  let isPromptCaptured = false;

  // 1. Capturar o evento beforeinstallprompt IMEDIATAMENTE antes de qualquer outro carregamento
  window.addEventListener('beforeinstallprompt', (e) => {
    console.log('[PWA] Evento beforeinstallprompt disparado pelo navegador!');
    e.preventDefault();
    deferredPrompt = e;
    isPromptCaptured = true;

    // Se a página já carregou, exibe o banner responsivo
    if (document.readyState === 'complete' || document.readyState === 'interactive') {
      showInstallBanner();
    }
  });

  // Determinar o caminho do Service Worker para o GitHub Pages
  function getSwPath() {
    const path = window.location.pathname;
    if (path.includes('/pages/admin/')) return '../../sw.js';
    if (path.includes('/pages/')) return '../sw.js';
    return './sw.js';
  }

  // 2. Registrar Service Worker no escopo correto
  if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
      const swPath = getSwPath();
      navigator.serviceWorker.register(swPath, { scope: './' })
        .then((reg) => {
          console.log('[PWA] Service Worker registrado com sucesso no escopo:', reg.scope);

          reg.addEventListener('updatefound', () => {
            const installingWorker = reg.installing;
            if (installingWorker) {
              installingWorker.addEventListener('statechange', () => {
                if (installingWorker.state === 'installed' && navigator.serviceWorker.controller) {
                  console.log('[PWA] Nova versão do PortableGarage detectada.');
                  if (window.HW?.toast?.info) {
                    window.HW.toast.info('Nova Versão', 'O PortableGarage foi atualizado. Recarregue a página para aplicar.');
                  }
                }
              });
            }
          });
        })
        .catch((err) => {
          console.warn('[PWA] Falha ao registrar Service Worker:', err);
        });

      // Caso o evento tenha sido capturado antes do domready
      if (isPromptCaptured && !isStandalone()) {
        showInstallBanner();
      }
    });
  }

  // Verificar se o app já está em modo standalone
  function isStandalone() {
    return window.matchMedia('(display-mode: standalone)').matches ||
           window.navigator.standalone === true ||
           document.referrer.includes('android-app://');
  }

  // Ocultar banner ao concluir instalação
  window.addEventListener('appinstalled', () => {
    console.log('[PWA] PortableGarage foi instalado com sucesso na tela inicial!');
    deferredPrompt = null;
    hideInstallBanner();
    localStorage.setItem('pg_pwa_installed', 'true');
    if (window.HW?.toast?.success) {
      window.HW.toast.success('Aplicativo Instalado ✓', 'O PortableGarage já está na sua tela inicial!');
    }
  });

  // 3. Exibir Banner de Instalação com CSS 100% Responsivo (Sem desbordamento na viewport)
  function showInstallBanner() {
    if (isStandalone() || localStorage.getItem('pg_pwa_dismissed') === 'true') {
      return;
    }

    if (document.getElementById('pwa-install-banner')) return;

    const banner = document.createElement('div');
    banner.id = 'pwa-install-banner';
    banner.className = 'pwa-install-banner animate-fade-up';
    banner.style.cssText = `
      position: fixed;
      bottom: calc(12px + env(safe-area-inset-bottom, 0px));
      left: 12px;
      right: 12px;
      margin: 0 auto;
      max-width: 460px;
      width: calc(100% - 24px);
      z-index: 99999;
      background: var(--bg-surface, #1e293b);
      border: 1px solid var(--border-default, #334155);
      box-shadow: 0 12px 32px rgba(0,0,0,0.6);
      border-radius: var(--radius-xl, 14px);
      padding: 12px 14px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
      box-sizing: border-box;
    `;

    const leftWrap = document.createElement('div');
    leftWrap.style.cssText = 'display:flex;align-items:center;gap:10px;min-width:0;flex:1;';

    const iconImg = document.createElement('img');
    const path = window.location.pathname;
    const logoSrc = path.includes('/pages/admin/') ? '../../assets/car.logo.png' : (path.includes('/pages/') ? '../assets/car.logo.png' : 'assets/car.logo.png');
    iconImg.src = logoSrc;
    iconImg.alt = 'PortableGarage Logo';
    iconImg.style.cssText = 'width:36px;height:36px;object-fit:contain;flex-shrink:0;';

    const textWrap = document.createElement('div');
    textWrap.style.cssText = 'display:flex;flex-direction:column;min-width:0;overflow:hidden;';

    const titleEl = document.createElement('div');
    titleEl.style.cssText = 'font-size:13px;font-weight:700;color:var(--text-primary, #f8fafc);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;';
    titleEl.textContent = 'Instalar PortableGarage';

    const descEl = document.createElement('div');
    descEl.style.cssText = 'font-size:11px;color:var(--text-secondary, #94a3b8);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;';
    descEl.textContent = 'Acesso rápido na tela inicial';

    textWrap.appendChild(titleEl);
    textWrap.appendChild(descEl);

    leftWrap.appendChild(iconImg);
    leftWrap.appendChild(textWrap);

    const rightWrap = document.createElement('div');
    rightWrap.style.cssText = 'display:flex;align-items:center;gap:6px;flex-shrink:0;';

    const installBtn = document.createElement('button');
    installBtn.className = 'btn btn-primary btn-xs';
    installBtn.style.cssText = 'padding:6px 14px;font-size:12px;font-weight:700;border-radius:8px;cursor:pointer;white-space:nowrap;';
    installBtn.textContent = 'Instalar';

    // Ação do Clique no Botão Instalar
    installBtn.addEventListener('click', async (e) => {
      e.stopPropagation();
      console.log('[PWA] Clique no botão de instalação.');

      if (deferredPrompt) {
        try {
          deferredPrompt.prompt();
          const { outcome } = await deferredPrompt.userChoice;
          console.log('[PWA] Resultado do prompt nativo:', outcome);
          deferredPrompt = null;
          hideInstallBanner();
        } catch (err) {
          console.warn('[PWA] Erro ao disparar o prompt:', err);
          showManualInstructions();
        }
      } else {
        // Se o evento nativo não estiver capturado (ex: bloqueado por política do navegador), mostra orientação manual
        showManualInstructions();
      }
    });

    const closeBtn = document.createElement('button');
    closeBtn.setAttribute('aria-label', 'Fechar aviso de instalação');
    closeBtn.style.cssText = 'background:none;border:none;color:var(--text-tertiary, #64748b);cursor:pointer;font-size:18px;padding:4px;display:flex;align-items:center;justify-content:center;';
    closeBtn.textContent = '✕';
    closeBtn.addEventListener('click', (e) => {
      e.stopPropagation();
      localStorage.setItem('pg_pwa_dismissed', 'true');
      hideInstallBanner();
    });

    rightWrap.appendChild(installBtn);
    rightWrap.appendChild(closeBtn);

    banner.appendChild(leftWrap);
    banner.appendChild(rightWrap);

    document.body.appendChild(banner);
  }

  function hideInstallBanner() {
    const banner = document.getElementById('pwa-install-banner');
    if (banner) banner.remove();
  }

  // 4. Orientação clara caso a instalação manual seja requerida (Android / Chrome)
  function showManualInstructions() {
    const isIos = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;

    if (isIos) {
      showIosInstructions();
      return;
    }

    if (window.HW?.modal?.confirm) {
      window.HW.modal.confirm({
        title: '📲 Instalar PortableGarage',
        message: 'Para instalar no Android/Chrome:\n1. Toque no menu ⁝ no canto superior do navegador.\n2. Selecione "Adicionar à tela inicial" ou "Instalar aplicativo".',
        confirmLabel: 'Entendi',
        confirmType: 'primary'
      });
    } else {
      alert('Para instalar o PortableGarage:\n1. Abra o menu ⁝ do seu navegador.\n2. Escolha "Adicionar à tela inicial" ou "Instalar aplicativo".');
    }
  }

  // 5. Suporte para iOS / Safari (Menu Compartilhar)
  function checkIosPrompt() {
    const isIos = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
    if (isIos && !isStandalone()) {
      const hasDismissed = sessionStorage.getItem('pwa_ios_dismissed');
      if (!hasDismissed) {
        setTimeout(showIosInstructions, 2500);
      }
    }
  }

  function showIosInstructions() {
    if (document.getElementById('pwa-ios-instructions')) return;

    const box = document.createElement('div');
    box.id = 'pwa-ios-instructions';
    box.className = 'animate-fade-up';
    box.style.cssText = `
      position: fixed;
      bottom: calc(16px + env(safe-area-inset-bottom, 0px));
      left: 12px;
      right: 12px;
      margin: 0 auto;
      max-width: 380px;
      width: calc(100% - 24px);
      z-index: 99999;
      background: var(--bg-surface, #1e293b);
      border: 1px solid var(--border-default, #334155);
      border-radius: var(--radius-xl, 14px);
      padding: 14px 16px;
      box-shadow: 0 12px 32px rgba(0,0,0,0.6);
      font-size: 13px;
      color: var(--text-primary, #f8fafc);
      box-sizing: border-box;
    `;

    box.innerHTML = `
      <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:8px;">
        <strong style="font-size:14px;color:var(--color-brand-primary, #e8302a);">📲 Instalar no iPhone</strong>
        <button id="pwa-ios-close" style="background:none;border:none;color:var(--text-tertiary);cursor:pointer;font-size:16px;">✕</button>
      </div>
      <ol style="margin:0;padding-left:18px;line-height:1.6;color:var(--text-secondary, #94a3b8);">
        <li>Toque no botão <strong>Compartilhar</strong> (ícone do quadrado com seta no Safari).</li>
        <li>Selecione <strong>"Adicionar à Tela de Início"</strong>.</li>
        <li>Confirme clicando em <strong>Adicionar</strong>.</li>
      </ol>
    `;

    document.body.appendChild(box);

    document.getElementById('pwa-ios-close')?.addEventListener('click', () => {
      sessionStorage.setItem('pwa_ios_dismissed', 'true');
      box.remove();
    });
  }

  document.addEventListener('DOMContentLoaded', checkIosPrompt);
})();
