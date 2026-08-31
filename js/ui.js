/**
 * ui.js — Hot Wheels Collector
 * Componentes de UI reutilizáveis: Toast, Modal, Loader, Confirm.
 *
 * SEGURANÇA: Nenhum uso de innerHTML com dados de usuário.
 * Todos os textos são inseridos via textContent ou createElement.
 */

'use strict';

/* ============================================================
   TOAST SYSTEM
   ============================================================ */
const Toast = (() => {
  const DURATION = 4000;
  const ICONS = {
    success: 'M20 6L9 17l-5-5',
    error:   'M18 6L6 18M6 6l12 12',
    warning: 'M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0zM12 9v4M12 17h.01',
    info:    'M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z',
  };

  let container = null;

  function _getContainer() {
    if (container) return container;
    container = document.getElementById('toast-container');
    if (!container) {
      container = document.createElement('div');
      container.id = 'toast-container';
      container.className = 'toast-container';
      document.body.appendChild(container);
    }
    return container;
  }

  function _buildSVG(pathD) {
    const svgNS = 'http://www.w3.org/2000/svg';
    const svg = document.createElementNS(svgNS, 'svg');
    svg.setAttribute('viewBox', '0 0 24 24');
    svg.setAttribute('fill', 'none');
    svg.setAttribute('stroke', 'currentColor');
    svg.setAttribute('stroke-width', '2');
    svg.setAttribute('stroke-linecap', 'round');
    svg.setAttribute('stroke-linejoin', 'round');

    pathD.split('M').filter(Boolean).forEach((seg, i) => {
      const path = document.createElementNS(svgNS, 'path');
      path.setAttribute('d', (i === 0 ? '' : 'M') + seg.trim());
      svg.appendChild(path);
    });
    return svg;
  }

  /**
   * Show a toast notification.
   * @param {object} opts
   * @param {'success'|'error'|'warning'|'info'} opts.type
   * @param {string} opts.title
   * @param {string} [opts.message]
   * @param {number} [opts.duration]
   */
  function show({ type = 'info', title, message = '', duration = DURATION }) {
    const ct = _getContainer();

    // Build toast element using safe DOM methods
    const toast = document.createElement('div');
    toast.className = `toast ${type}`;
    toast.setAttribute('role', 'alert');
    toast.setAttribute('aria-live', 'polite');

    // Icon
    const iconWrap = document.createElement('div');
    iconWrap.className = 'toast-icon';
    iconWrap.appendChild(_buildSVG(ICONS[type] ?? ICONS.info));
    toast.appendChild(iconWrap);

    // Content
    const content = document.createElement('div');
    content.className = 'toast-content';

    const titleEl = document.createElement('div');
    titleEl.className = 'toast-title';
    titleEl.textContent = title;
    content.appendChild(titleEl);

    if (message) {
      const msgEl = document.createElement('div');
      msgEl.className = 'toast-message';
      msgEl.textContent = message;
      content.appendChild(msgEl);
    }
    toast.appendChild(content);

    // Dismiss button
    const dismiss = document.createElement('button');
    dismiss.className = 'toast-dismiss';
    dismiss.setAttribute('aria-label', 'Fechar notificação');
    const dismissSvg = _buildSVG('M18 6L6 18M6 6l12 12');
    dismiss.appendChild(dismissSvg);
    dismiss.addEventListener('click', () => remove(toast));
    toast.appendChild(dismiss);

    ct.appendChild(toast);

    // Trigger animation
    requestAnimationFrame(() => {
      requestAnimationFrame(() => toast.classList.add('show'));
    });

    // Auto-dismiss
    const timer = setTimeout(() => remove(toast), duration);
    toast._dismissTimer = timer;

    return toast;
  }

  function remove(toast) {
    clearTimeout(toast._dismissTimer);
    toast.classList.remove('show');
    toast.addEventListener('transitionend', () => toast.remove(), { once: true });
  }

  // Shorthand methods
  const success = (title, message) => show({ type: 'success', title, message });
  const error   = (title, message) => show({ type: 'error',   title, message });
  const warning = (title, message) => show({ type: 'warning', title, message });
  const info    = (title, message) => show({ type: 'info',    title, message });

  return { show, success, error, warning, info };
})();

/* ============================================================
   MODAL SYSTEM
   ============================================================ */
const Modal = (() => {
  let activeModal = null;

  /**
   * Open a modal by ID.
   * @param {string} modalId
   */
  function open(modalId) {
    const overlay = document.getElementById(modalId);
    if (!overlay) return;
    overlay.classList.add('open');
    document.body.style.overflow = 'hidden';
    activeModal = overlay;

    // Close on overlay click
    overlay.addEventListener('click', (e) => {
      if (e.target === overlay) close(modalId);
    }, { once: true });

    // Close on Escape
    const escHandler = (e) => {
      if (e.key === 'Escape') {
        close(modalId);
        document.removeEventListener('keydown', escHandler);
      }
    };
    document.addEventListener('keydown', escHandler);
  }

  /**
   * Close a modal by ID.
   * @param {string} modalId
   */
  function close(modalId) {
    const overlay = document.getElementById(modalId);
    if (!overlay) return;
    overlay.classList.remove('open');
    document.body.style.overflow = '';
    if (activeModal === overlay) activeModal = null;
  }

  /**
   * Create a confirmation dialog.
   * @param {object} opts
   * @param {string} opts.title
   * @param {string} opts.message
   * @param {string} [opts.confirmLabel]
   * @param {'danger'|'primary'} [opts.confirmType]
   * @returns {Promise<boolean>}
   */
  function confirm({ title, message, confirmLabel = 'Confirmar', confirmType = 'danger' }) {
    return new Promise((resolve) => {
      const overlayId = 'hw-confirm-modal';

      // Remove existing
      document.getElementById(overlayId)?.remove();

      const overlay = document.createElement('div');
      overlay.id = overlayId;
      overlay.className = 'modal-overlay';

      const modal = document.createElement('div');
      modal.className = 'modal';
      modal.style.maxWidth = '440px';

      const header = document.createElement('div');
      header.className = 'modal-header';

      const titleEl = document.createElement('h3');
      titleEl.className = 'modal-title';
      titleEl.textContent = title;
      header.appendChild(titleEl);
      modal.appendChild(header);

      const body = document.createElement('div');
      body.className = 'modal-body';
      const msgEl = document.createElement('p');
      msgEl.style.cssText = 'font-size: var(--text-sm); color: var(--text-secondary); line-height: 1.7;';
      msgEl.textContent = message;
      body.appendChild(msgEl);
      modal.appendChild(body);

      const footer = document.createElement('div');
      footer.className = 'modal-footer';

      const cancelBtn = document.createElement('button');
      cancelBtn.className = 'btn btn-secondary';
      cancelBtn.textContent = 'Cancelar';
      cancelBtn.addEventListener('click', () => {
        overlay.classList.remove('open');
        document.body.style.overflow = '';
        setTimeout(() => overlay.remove(), 300);
        resolve(false);
      });

      const confirmBtn = document.createElement('button');
      confirmBtn.className = `btn btn-${confirmType}`;
      confirmBtn.textContent = confirmLabel;
      confirmBtn.addEventListener('click', () => {
        overlay.classList.remove('open');
        document.body.style.overflow = '';
        setTimeout(() => overlay.remove(), 300);
        resolve(true);
      });

      footer.appendChild(cancelBtn);
      footer.appendChild(confirmBtn);
      modal.appendChild(footer);
      overlay.appendChild(modal);
      document.body.appendChild(overlay);

      requestAnimationFrame(() => {
        requestAnimationFrame(() => {
          overlay.classList.add('open');
          document.body.style.overflow = 'hidden';
        });
      });
    });
  }

  // Wire up static close buttons
  function initCloseButtons() {
    document.querySelectorAll('[data-modal-close]').forEach(btn => {
      btn.addEventListener('click', () => {
        const modalId = btn.closest('.modal-overlay')?.id;
        if (modalId) close(modalId);
      });
    });
  }

  return { open, close, confirm, initCloseButtons };
})();

/* ============================================================
   LOADING STATE HELPERS
   ============================================================ */
const Loader = (() => {
  function show(containerId) {
    const container = document.getElementById(containerId);
    if (!container) return;
    container.replaceChildren(); // safe clear

    const wrapper = document.createElement('div');
    wrapper.style.cssText = 'display:flex;align-items:center;justify-content:center;padding:var(--space-16);';
    const spinner = document.createElement('div');
    spinner.className = 'spinner spinner-lg';
    wrapper.appendChild(spinner);
    container.appendChild(wrapper);
  }

  function hide(containerId) {
    const container = document.getElementById(containerId);
    if (!container) return;
    container.replaceChildren();
  }

  /**
   * Show skeleton cards inside a container.
   * @param {string} containerId
   * @param {number} count
   */
  function skeleton(containerId, count = 8) {
    const container = document.getElementById(containerId);
    if (!container) return;
    container.replaceChildren();
    for (let i = 0; i < count; i++) {
      const card = document.createElement('div');
      card.className = 'car-card';
      card.style.pointerEvents = 'none';

      const img = document.createElement('div');
      img.className = 'skeleton';
      img.style.cssText = 'width:100%;aspect-ratio:4/3;border-radius:0;';
      card.appendChild(img);

      const body = document.createElement('div');
      body.style.cssText = 'padding:var(--space-4) var(--space-5) var(--space-5);display:flex;flex-direction:column;gap:var(--space-2);';

      const line1 = document.createElement('div');
      line1.className = 'skeleton';
      line1.style.cssText = 'height:18px;width:70%;';
      const line2 = document.createElement('div');
      line2.className = 'skeleton';
      line2.style.cssText = 'height:12px;width:50%;';
      const line3 = document.createElement('div');
      line3.className = 'skeleton';
      line3.style.cssText = 'height:12px;width:40%;margin-top:var(--space-2);';

      body.appendChild(line1);
      body.appendChild(line2);
      body.appendChild(line3);
      card.appendChild(body);
      container.appendChild(card);
    }
  }

  return { show, hide, skeleton };
})();

// Init modal close buttons on DOM ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', Modal.initCloseButtons);
} else {
  Modal.initCloseButtons();
}

// Expose to global HW namespace
if (window.HW) {
  window.HW.toast  = Toast;
  window.HW.modal  = Modal;
  window.HW.loader = Loader;
} else {
  window.HW = { toast: Toast, modal: Modal, loader: Loader };
}
