/**
 * app.js — Hot Wheels Collector
 * Inicialização global, tema, navegação SPA-like, utilitários.
 *
 * Responsabilidades:
 *  - Gerenciar tema claro/escuro
 *  - Ativar link de navegação correto na sidebar e bottom nav
 *  - Injetar o shell (sidebar + topbar) em cada página
 *  - Utilitários globais (formatação, debounce, sanitização DOM)
 */

'use strict';

/* ============================================================
   THEME MANAGER
   ============================================================ */
const ThemeManager = (() => {
  const STORAGE_KEY = 'hw-theme';
  const THEMES = ['dark', 'light'];

  function get() {
    const saved = localStorage.getItem(STORAGE_KEY);
    if (THEMES.includes(saved)) return saved;
    return window.matchMedia('(prefers-color-scheme: light)').matches ? 'light' : 'dark';
  }

  function set(theme) {
    if (!THEMES.includes(theme)) return;
    document.documentElement.setAttribute('data-theme', theme);
    localStorage.setItem(STORAGE_KEY, theme);
    // Update toggle button icon
    const btn = document.getElementById('theme-toggle-btn');
    if (btn) {
      const icon = btn.querySelector('svg');
      if (icon) icon.replaceWith(_buildThemeIcon(theme));
    }
  }

  function toggle() {
    const current = get();
    set(current === 'dark' ? 'light' : 'dark');
  }

  function init() {
    set(get());
    // Listen for OS theme changes
    window.matchMedia('(prefers-color-scheme: light)').addEventListener('change', (e) => {
      if (!localStorage.getItem(STORAGE_KEY)) {
        set(e.matches ? 'light' : 'dark');
      }
    });
  }

  // Returns SVG element for current theme icon (no innerHTML used)
  function _buildThemeIcon(theme) {
    const svgNS = 'http://www.w3.org/2000/svg';
    const svg = document.createElementNS(svgNS, 'svg');
    svg.setAttribute('viewBox', '0 0 24 24');
    svg.setAttribute('width', '18');
    svg.setAttribute('height', '18');
    svg.setAttribute('fill', 'none');
    svg.setAttribute('stroke', 'currentColor');
    svg.setAttribute('stroke-width', '1.8');
    svg.setAttribute('stroke-linecap', 'round');
    svg.setAttribute('stroke-linejoin', 'round');

    if (theme === 'dark') {
      // Moon icon
      const path = document.createElementNS(svgNS, 'path');
      path.setAttribute('d', 'M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z');
      svg.appendChild(path);
    } else {
      // Sun icon
      const circle = document.createElementNS(svgNS, 'circle');
      circle.setAttribute('cx', '12');
      circle.setAttribute('cy', '12');
      circle.setAttribute('r', '5');
      svg.appendChild(circle);
      const lines = [
        [12,1,12,3],[12,21,12,23],[4.22,4.22,5.64,5.64],
        [18.36,18.36,19.78,19.78],[1,12,3,12],[21,12,23,12],
        [4.22,19.78,5.64,18.36],[18.36,5.64,19.78,4.22]
      ];
      lines.forEach(([x1,y1,x2,y2]) => {
        const line = document.createElementNS(svgNS, 'line');
        line.setAttribute('x1', x1); line.setAttribute('y1', y1);
        line.setAttribute('x2', x2); line.setAttribute('y2', y2);
        svg.appendChild(line);
      });
    }
    return svg;
  }

  return { get, set, toggle, init };
})();

/* ============================================================
   NAVIGATION MANAGER
   ============================================================ */
const NavManager = (() => {
  // Maps page path fragments to nav item IDs
  const NAV_MAP = {
    'dashboard':    'nav-dashboard',
    'colecao':      'nav-collection',
    'explorar':     'nav-explore',
    'favoritos':    'nav-favorites',
    'adicionar':    'nav-add',
    'estatisticas': 'nav-stats',
    'configuracoes':'nav-settings',
    'index':        'nav-dashboard',
  };

  function getActivePage() {
    const path = window.location.pathname;
    const file = path.split('/').pop().replace('.html', '') || 'dashboard';
    return file;
  }

  function setActive(pageKey) {
    const navId = NAV_MAP[pageKey];
    if (!navId) return;

    // Sidebar
    document.querySelectorAll('.nav-item').forEach(item => {
      item.classList.toggle('active', item.id === navId);
    });

    // Bottom nav
    document.querySelectorAll('.bottom-nav-item').forEach(item => {
      item.classList.toggle('active', item.id === 'bn-' + navId);
    });
  }

  function init() {
    const page = getActivePage();
    setActive(page);
  }

  return { init, setActive };
})();

/* ============================================================
   SIDEBAR MANAGER
   ============================================================ */
const SidebarManager = (() => {
  const COLLAPSED_KEY = 'hw-sidebar-collapsed';
  let sidebar = null;
  let overlay = null;

  function init() {
    sidebar = document.getElementById('app-sidebar');
    overlay = document.getElementById('sidebar-overlay');
    if (!sidebar) return;

    // Restore collapsed state on desktop
    if (window.innerWidth > 768 && localStorage.getItem(COLLAPSED_KEY) === 'true') {
      sidebar.classList.add('collapsed');
    }

    // Desktop toggle
    const toggleBtn = document.getElementById('sidebar-toggle');
    if (toggleBtn) {
      toggleBtn.addEventListener('click', toggleDesktop);
    }

    // Mobile: topbar hamburger
    const hamburger = document.getElementById('mobile-menu-btn');
    if (hamburger) {
      hamburger.addEventListener('click', openMobile);
    }

    // Overlay click closes mobile sidebar
    if (overlay) {
      overlay.addEventListener('click', closeMobile);
    }

    // Close mobile sidebar on nav click
    document.querySelectorAll('.nav-item').forEach(item => {
      item.addEventListener('click', () => {
        if (window.innerWidth <= 768) closeMobile();
      });
    });
  }

  function toggleDesktop() {
    sidebar.classList.toggle('collapsed');
    localStorage.setItem(COLLAPSED_KEY, sidebar.classList.contains('collapsed'));
  }

  function openMobile() {
    sidebar.classList.add('mobile-open');
    if (overlay) overlay.classList.add('visible');
    document.body.style.overflow = 'hidden';
  }

  function closeMobile() {
    sidebar.classList.remove('mobile-open');
    if (overlay) overlay.classList.remove('visible');
    document.body.style.overflow = '';
  }

  return { init, openMobile, closeMobile };
})();

/* ============================================================
   UTILITIES
   ============================================================ */

/**
 * Safe text setter — never uses innerHTML with user data.
 * @param {HTMLElement} el
 * @param {string} text
 */
function setText(el, text) {
  if (el) el.textContent = String(text ?? '');
}

/**
 * Debounce function for search inputs.
 * @param {Function} fn
 * @param {number} ms
 */
function debounce(fn, ms = 300) {
  let timer;
  return (...args) => {
    clearTimeout(timer);
    timer = setTimeout(() => fn(...args), ms);
  };
}

/**
 * Format currency in BRL.
 * @param {number} value
 */
function formatCurrency(value) {
  return new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
    minimumFractionDigits: 2,
  }).format(value ?? 0);
}

/**
 * Format date in Brazilian format.
 * @param {string|Date} date
 */
function formatDate(date) {
  if (!date) return '—';
  return new Intl.DateTimeFormat('pt-BR').format(new Date(date));
}

/**
 * Format relative time (e.g. "há 2 dias").
 * @param {string|Date} date
 */
function formatRelativeTime(date) {
  if (!date) return '';
  const diff = Date.now() - new Date(date).getTime();
  const rtf = new Intl.RelativeTimeFormat('pt-BR', { numeric: 'auto' });
  const UNITS = [
    [60000, 'minute', 1000],
    [3600000, 'hour', 60000],
    [86400000, 'day', 3600000],
    [604800000, 'week', 86400000],
    [2592000000, 'month', 604800000],
    [Infinity, 'year', 2592000000],
  ];
  for (const [limit, unit, divisor] of UNITS) {
    if (diff < limit) return rtf.format(-Math.round(diff / divisor), unit);
  }
  return formatDate(date);
}

/**
 * Create a DOM element safely.
 * @param {string} tag
 * @param {object} attrs
 * @param {string} [textContent]
 */
function createElement(tag, attrs = {}, textContent = null) {
  const el = document.createElement(tag);
  for (const [key, val] of Object.entries(attrs)) {
    el.setAttribute(key, val);
  }
  if (textContent !== null) el.textContent = textContent;
  return el;
}

/**
 * Animate a numeric counter from 0 to target.
 * @param {HTMLElement} el
 * @param {number} target
 * @param {number} duration
 */
function animateCounter(el, target, duration = 1200) {
  if (!el) return;
  const start = performance.now();
  const startVal = 0;

  function step(now) {
    const progress = Math.min((now - start) / duration, 1);
    const eased = 1 - Math.pow(1 - progress, 3); // ease-out cubic
    el.textContent = Math.round(startVal + (target - startVal) * eased).toLocaleString('pt-BR');
    if (progress < 1) requestAnimationFrame(step);
  }

  requestAnimationFrame(step);
}

/* ============================================================
   APP INIT
   ============================================================ */
function initApp() {
  ThemeManager.init();
  SidebarManager.init();
  NavManager.init();

  // Theme toggle button
  const themeBtn = document.getElementById('theme-toggle-btn');
  if (themeBtn) {
    themeBtn.addEventListener('click', ThemeManager.toggle);
  }

  // Add page entry animation to main content
  const pageContent = document.querySelector('.page-content');
  if (pageContent) {
    pageContent.classList.add('page-enter');
  }
}

// Run on DOM ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', initApp);
} else {
  initApp();
}

// Expose globals — use Object.assign to preserve registrations from supabase.js e outros módulos
window.HW = Object.assign(window.HW || {}, {
  theme: ThemeManager,
  nav: NavManager,
  sidebar: SidebarManager,
  utils: { setText, debounce, formatCurrency, formatDate, formatRelativeTime, createElement, animateCounter },
});

// Expor ThemeManager globalmente para que scripts inline possam chamar ThemeManager.init()
window.ThemeManager = ThemeManager;
