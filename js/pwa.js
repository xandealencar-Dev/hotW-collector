/**
 * pwa.js — PortableGarage PWA Registration & Install Prompt Manager
 * Gerencia a instalação da PWA no Android/Desktop/iOS e registro do Service Worker.
 */

'use strict';

(function () {
  let deferredPrompt = null;

  // Determina o caminho relativo correto para o sw.js baseado na URL
  function getSwPath() {
    const path = window.location.pathname;
    if (path.includes('/pages/admin/')) return '../../sw.js';
    if (path.includes('/pages/')) return '../sw.js';
    return './sw.js';
  }

  // Registrar Service Worker
  if ('serviceWorker' in navigator) {
    window.addEventListener('load', () => {
      const swPath = getSwPath();
      navigator.serviceWorker.register(swPath, { scope: './' })
        .then((reg) => {
          console.log('[PWA] Service Worker registrado com sucesso:', reg.scope);

          // Detectar atualizações automaticamente
          reg.addEventListener('updatefound', () => {
            const installingWorker = reg.installing;
            if (installingWorker) {
              installingWorker.addEventListener('statechange', () => {
                if (installingWorker.state === 'installed' && navigator.serviceWorker.controller) {
                  console.log('[PWA] Nova versão do PortableGarage disponível!');
                  if (window.HW?.toast?.info) {
                    window.HW.toast.info('Nova Versão', 'O PortableGarage foi atualizado. Recarregue a página para usar a nova versão.');
                  }
                }
              });
            }
          });
        })
        .catch((err) => {
          console.warn('[PWA] Falha ao registrar Service Worker:', err);
        });
    });
  }

  // Detectar suporte a instalação (Android / Chrome / Edge / Desktop)
  window.addEventListener('beforeinstallprompt', (e) => {
    e.preventDefault();
    deferredPrompt = e;
    showInstallBanner();
  });

  // Esconder convite caso a PWA já esteja instalada
  window.addEventListener('appinstalled', () => {
    console.log('[PWA] PortableGarage instalado com sucesso!');
    hideInstallBanner();
    deferredPrompt = null;
    if (window.HW?.toast?.success) {
      window.HW.toast.success('PortableGarage Instalado ✓', 'O aplicativo já está disponível na sua tela inicial!');
    }
  });

  // Função para exibir banner discreto de instalação
  function showInstallBanner() {
    // Não mostrar se já estiver em modo standalone
    if (window.matchMedia('(display-mode: standalone)').matches || window.navigator.standalone === true) {
      return;
    }

    if (document.getElementById('pwa-install-banner')) return;

    const banner = document.createElement('div');
    banner.id = 'pwa-install-banner';
    banner.className = 'pwa-install-banner animate-fade-up';
    banner.style.cssText = `
      position: fixed;
      bottom: var(--space-4);
      left: 50%;
      transform: translateX(-50%);
      z-index: 9999;
      background: var(--bg-surface);
      border: 1px solid var(--border-default);
      box-shadow: var(--shadow-2xl);
      border-radius: var(--radius-xl);
      padding: var(--space-3) var(--space-4);
      display: flex;
      align-items: center;
      gap: var(--space-3);
      max-width: 90vw;
      width: 400px;
    `;

    const iconImg = document.createElement('img');
    const path = window.location.pathname;
    const logoSrc = path.includes('/pages/admin/') ? '../../assets/car.logo.png' : (path.includes('/pages/') ? '../assets/car.logo.png' : 'assets/car.logo.png');
    iconImg.src = logoSrc;
    iconImg.alt = 'PortableGarage Icon';
    iconImg.style.cssText = 'width:36px;height:36px;object-fit:contain;flex-shrink:0;';

    const textWrap = document.createElement('div');
    textWrap.style.cssText = 'flex:1;min-width:0;';

    const titleEl = document.createElement('div');
    titleEl.style.cssText = 'font-size:var(--text-xs);font-weight:700;color:var(--text-primary);';
    titleEl.textContent = 'Instalar PortableGarage';

    const descEl = document.createElement('div');
    descEl.style.cssText = 'font-size:11px;color:var(--text-secondary);';
    descEl.textContent = 'Acesso rápido direto da sua tela inicial';

    textWrap.appendChild(titleEl);
    textWrap.appendChild(descEl);

    const installBtn = document.createElement('button');
    installBtn.className = 'btn btn-primary btn-xs';
    installBtn.style.cssText = 'padding:4px 12px;font-size:var(--text-xs);font-weight:600;flex-shrink:0;';
    installBtn.textContent = 'Instalar';

    installBtn.addEventListener('click', async () => {
      if (deferredPrompt) {
        deferredPrompt.prompt();
        const { outcome } = await deferredPrompt.userChoice;
        console.log('[PWA] Escolha do usuário:', outcome);
        deferredPrompt = null;
        hideInstallBanner();
      }
    });

    const closeBtn = document.createElement('button');
    closeBtn.setAttribute('aria-label', 'Fechar aviso');
    closeBtn.style.cssText = 'background:none;border:none;color:var(--text-tertiary);cursor:pointer;font-size:16px;padding:2px 4px;';
    closeBtn.textContent = '✕';
    closeBtn.addEventListener('click', hideInstallBanner);

    banner.appendChild(iconImg);
    banner.appendChild(textWrap);
    banner.appendChild(installBtn);
    banner.appendChild(closeBtn);

    document.body.appendChild(banner);
  }

  function hideInstallBanner() {
    const banner = document.getElementById('pwa-install-banner');
    if (banner) banner.remove();
  }

  // Suporte e instruções para iOS / Safari (onde beforeinstallprompt não é disparado)
  function checkIosPrompt() {
    const isIos = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
    const isStandalone = window.navigator.standalone === true;

    if (isIos && !isStandalone) {
      const hasDismissed = sessionStorage.getItem('pwa_ios_dismissed');
      if (!hasDismissed) {
        setTimeout(() => {
          showIosInstructions();
        }, 3000);
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
      bottom: var(--space-4);
      left: 50%;
      transform: translateX(-50%);
      z-index: 9999;
      background: var(--bg-surface);
      border: 1px solid var(--border-default);
      border-radius: var(--radius-xl);
      padding: var(--space-4);
      width: 90vw;
      max-width: 360px;
      box-shadow: var(--shadow-2xl);
      font-size: var(--text-xs);
      color: var(--text-primary);
    `;

    box.innerHTML = `
      <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:8px;">
        <strong style="font-size:13px;">📲 Instalar PortableGarage no iPhone</strong>
        <button id="pwa-ios-close" style="background:none;border:none;color:var(--text-tertiary);cursor:pointer;">✕</button>
      </div>
      <ol style="margin:0;padding-left:18px;line-height:1.6;color:var(--text-secondary);">
        <li>Toque no botão <strong>Compartilhar</strong> (ícone do quadrado com seta para cima no navegador Safari).</li>
        <li>Role para baixo e selecione <strong>"Adicionar à Tela de Início"</strong>.</li>
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
