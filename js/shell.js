/**
 * shell.js — Hot Wheels Collector
 * Injeta o shell da aplicação (sidebar + topbar + bottom nav)
 * em todas as páginas internas via JavaScript seguro (createElement).
 *
 * SEGURANÇA: Nenhum uso de innerHTML para dados de usuário.
 * Estrutura estática injetada via createElement/textContent.
 */
'use strict';

/* ============================================================
   SVG ICON BUILDER (seguro — sem innerHTML)
   ============================================================ */
function buildIcon(pathData, opts = {}) {
  const svgNS = 'http://www.w3.org/2000/svg';
  const svg = document.createElementNS(svgNS, 'svg');
  svg.setAttribute('viewBox', '0 0 24 24');
  svg.setAttribute('fill', 'none');
  svg.setAttribute('stroke', 'currentColor');
  svg.setAttribute('stroke-width', opts.strokeWidth || '1.8');
  svg.setAttribute('stroke-linecap', 'round');
  svg.setAttribute('stroke-linejoin', 'round');
  svg.setAttribute('aria-hidden', 'true');
  if (opts.width)  svg.setAttribute('width', opts.width);
  if (opts.height) svg.setAttribute('height', opts.height);

  // Parse multiple paths separated by '|'
  const paths = pathData.split('|');
  paths.forEach(d => {
    if (d.trim().startsWith('circle:')) {
      const parts = d.replace('circle:', '').trim().split(',');
      const el = document.createElementNS(svgNS, 'circle');
      el.setAttribute('cx', parts[0]); el.setAttribute('cy', parts[1]); el.setAttribute('r', parts[2]);
      svg.appendChild(el);
    } else if (d.trim().startsWith('rect:')) {
      const parts = d.replace('rect:', '').trim().split(',');
      const el = document.createElementNS(svgNS, 'rect');
      ['x','y','width','height','rx'].forEach((a,i) => { if(parts[i]) el.setAttribute(a, parts[i]); });
      svg.appendChild(el);
    } else if (d.trim().startsWith('line:')) {
      const parts = d.replace('line:', '').trim().split(',');
      const el = document.createElementNS(svgNS, 'line');
      el.setAttribute('x1', parts[0]); el.setAttribute('y1', parts[1]);
      el.setAttribute('x2', parts[2]); el.setAttribute('y2', parts[3]);
      svg.appendChild(el);
    } else if (d.trim().startsWith('polyline:')) {
      const el = document.createElementNS(svgNS, 'polyline');
      el.setAttribute('points', d.replace('polyline:', '').trim());
      svg.appendChild(el);
    } else if (d.trim()) {
      const el = document.createElementNS(svgNS, 'path');
      el.setAttribute('d', d.trim());
      svg.appendChild(el);
    }
  });
  return svg;
}

/* ============================================================
   NAV ITEMS DEFINITION
   ============================================================ */
const NAV_ITEMS = [
  {
    id: 'nav-dashboard',
    label: 'Dashboard',
    href: './dashboard.html',
    icon: 'M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z|polyline:9 22 9 12 15 12 15 22',
    bottomNav: true,
    bnIcon: 'M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z',
  },
  {
    id: 'nav-collection',
    label: 'Minha Coleção',
    href: './colecao.html',
    icon: 'M19 11H5m14 0a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-6a2 2 0 0 1 2-2m14 0V9a2 2 0 0 0-2-2M5 11V9a2 2 0 0 1 2-2m0 0V5a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v2M7 7h10',
    bottomNav: true,
    bnIcon: 'M19 11H5m14 0a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-6a2 2 0 0 1 2-2m14 0V9a2 2 0 0 0-2-2M5 11V9a2 2 0 0 1 2-2m0 0V5a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v2M7 7h10',
  },
  {
    id: 'nav-explore',
    label: 'Explorar',
    href: './explorar.html',
    icon: 'circle:11,11,8|M21 21l-4.35-4.35',
    bottomNav: false,
  },
  {
    id: 'nav-favorites',
    label: 'Favoritos',
    href: './favoritos.html',
    icon: 'M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z',
    bottomNav: true,
    bnIcon: 'M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z',
  },
  {
    id: 'nav-stats',
    label: 'Estatísticas',
    href: './estatisticas.html',
    icon: 'M18 20V10|M12 20V4|M6 20v-6',
    bottomNav: false,
  },
  {
    id: 'nav-settings',
    label: 'Configurações',
    href: './configuracoes.html',
    icon: 'M12 15a3 3 0 1 0 0-6 3 3 0 0 0 0 6z|M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1-2.83 2.83l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-4 0v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83-2.83l.06-.06A1.65 1.65 0 0 0 4.68 15a1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1 0-4h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 2.83-2.83l.06.06A1.65 1.65 0 0 0 9 4.68a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 4 0v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 2.83l-.06.06A1.65 1.65 0 0 0 19.4 9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 0 4h-.09a1.65 1.65 0 0 0-1.51 1z',
    bottomNav: false,
  },
];

/* ============================================================
   SIDEBAR BUILDER
   ============================================================ */
function buildSidebar() {
  const sidebar = document.createElement('aside');
  sidebar.id = 'app-sidebar';
  sidebar.className = 'sidebar';
  sidebar.setAttribute('role', 'navigation');
  sidebar.setAttribute('aria-label', 'Menu principal');

  /* ── Header ── */
  const header = document.createElement('div');
  header.className = 'sidebar-header';

  const logo = document.createElement('a');
  logo.href = './dashboard.html';
  logo.className = 'sidebar-logo';
  logo.setAttribute('aria-label', 'HW Collector — Ir para Dashboard');
  logo.appendChild(buildIcon('M12 2L2 7l10 5 10-5-10-5z|M2 17l10 5 10-5|M2 12l10 5 10-5'));
  header.appendChild(logo);

  const brandText = document.createElement('div');
  brandText.className = 'sidebar-brand-text';
  const brandName = document.createElement('div');
  brandName.className = 'sidebar-brand-name';
  brandName.textContent = 'HW Collector';
  const brandTagline = document.createElement('div');
  brandTagline.className = 'sidebar-brand-tagline';
  brandTagline.textContent = 'Sua coleção organizada';
  brandText.appendChild(brandName);
  brandText.appendChild(brandTagline);
  header.appendChild(brandText);

  const toggleBtn = document.createElement('button');
  toggleBtn.id = 'sidebar-toggle';
  toggleBtn.className = 'sidebar-toggle';
  toggleBtn.setAttribute('aria-label', 'Recolher menu');
  toggleBtn.appendChild(buildIcon('M15 18l-6-6 6-6'));
  header.appendChild(toggleBtn);

  sidebar.appendChild(header);

  /* ── Navigation ── */
  const nav = document.createElement('nav');
  nav.className = 'sidebar-nav';

  // Main section
  const mainLabel = document.createElement('div');
  mainLabel.className = 'nav-section-label';
  mainLabel.textContent = 'Principal';
  nav.appendChild(mainLabel);

  const mainItems = ['nav-dashboard','nav-collection','nav-explore','nav-favorites'];
  mainItems.forEach(id => {
    const item = NAV_ITEMS.find(n => n.id === id);
    if (item) nav.appendChild(buildNavItem(item));
  });

  // Library section
  const libLabel = document.createElement('div');
  libLabel.className = 'nav-section-label';
  libLabel.style.marginTop = 'var(--space-4)';
  libLabel.textContent = 'Análises';
  nav.appendChild(libLabel);

  nav.appendChild(buildNavItem(NAV_ITEMS.find(n => n.id === 'nav-stats')));

  // System section
  const sysLabel = document.createElement('div');
  sysLabel.className = 'nav-section-label';
  sysLabel.style.marginTop = 'var(--space-4)';
  sysLabel.textContent = 'Sistema';
  nav.appendChild(sysLabel);

  nav.appendChild(buildNavItem(NAV_ITEMS.find(n => n.id === 'nav-settings')));

  sidebar.appendChild(nav);

  /* ── Footer ── */
  const footer = document.createElement('div');
  footer.className = 'sidebar-footer';

  // Add car button in sidebar
  const addBtn = document.createElement('a');
  addBtn.href = './adicionar.html';
  addBtn.className = 'btn btn-primary btn-full';
  addBtn.id = 'sidebar-add-btn';
  addBtn.appendChild(buildIcon('M12 5v14|M5 12h14', { strokeWidth: '2.5' }));
  const addLabel = document.createElement('span');
  addLabel.textContent = 'Adicionar Carrinho';
  addBtn.appendChild(addLabel);
  footer.appendChild(addBtn);

  sidebar.appendChild(footer);
  return sidebar;
}

function buildNavItem(item) {
  const a = document.createElement('a');
  a.id = item.id;
  a.className = 'nav-item';
  a.href = item.href;

  const iconWrap = document.createElement('div');
  iconWrap.className = 'nav-icon';
  iconWrap.appendChild(buildIcon(item.icon));
  a.appendChild(iconWrap);

  const labelEl = document.createElement('span');
  labelEl.className = 'nav-label';
  labelEl.textContent = item.label;
  a.appendChild(labelEl);

  return a;
}

/* ============================================================
   TOPBAR BUILDER
   ============================================================ */
function buildTopbar(pageTitle) {
  const topbar = document.createElement('header');
  topbar.className = 'topbar';
  topbar.setAttribute('role', 'banner');

  // Mobile hamburger
  const hamburger = document.createElement('button');
  hamburger.id = 'mobile-menu-btn';
  hamburger.className = 'icon-btn';
  hamburger.setAttribute('aria-label', 'Abrir menu');
  hamburger.style.display = 'none';
  hamburger.appendChild(buildIcon('M3 12h18|M3 6h18|M3 18h18'));
  topbar.appendChild(hamburger);

  // Only show hamburger on mobile via CSS
  hamburger.style.cssText = '@media (max-width: 768px) { display: flex; }';

  // Title
  const title = document.createElement('h1');
  title.className = 'topbar-title';
  title.id = 'page-title';
  title.textContent = pageTitle || 'Dashboard';
  topbar.appendChild(title);

  // Search
  const searchWrap = document.createElement('div');
  searchWrap.className = 'topbar-search';
  const searchIcon = document.createElement('div');
  searchIcon.className = 'topbar-search-icon';
  searchIcon.appendChild(buildIcon('circle:11,11,8|M21 21l-4.35-4.35'));
  searchWrap.appendChild(searchIcon);
  const searchInput = document.createElement('input');
  searchInput.type = 'search';
  searchInput.id = 'topbar-search-input';
  searchInput.placeholder = 'Buscar carrinho...';
  searchInput.setAttribute('aria-label', 'Buscar carrinhos');
  searchInput.maxLength = 100;
  searchInput.autocomplete = 'off';
  searchWrap.appendChild(searchInput);
  topbar.appendChild(searchWrap);

  // Actions
  const actions = document.createElement('div');
  actions.className = 'topbar-actions';

  // Theme toggle
  const themeBtn = document.createElement('button');
  themeBtn.id = 'theme-toggle-btn';
  themeBtn.className = 'icon-btn';
  themeBtn.setAttribute('aria-label', 'Alternar tema claro/escuro');
  themeBtn.setAttribute('data-tooltip', 'Alternar tema');
  themeBtn.appendChild(buildIcon('M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z'));
  actions.appendChild(themeBtn);

  // Notification btn (future)
  const notifBtn = document.createElement('button');
  notifBtn.id = 'notification-btn';
  notifBtn.className = 'icon-btn';
  notifBtn.setAttribute('aria-label', 'Notificações');
  notifBtn.setAttribute('data-tooltip', 'Notificações');
  notifBtn.appendChild(buildIcon('M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9|M13.73 21a2 2 0 0 1-3.46 0'));
  actions.appendChild(notifBtn);

  // Avatar
  const avatar = document.createElement('button');
  avatar.id = 'avatar-btn';
  avatar.className = 'avatar-btn';
  avatar.setAttribute('aria-label', 'Menu do usuário');
  avatar.setAttribute('data-tooltip', 'Minha conta');
  avatar.textContent = 'C'; // Will be updated with user initial
  actions.appendChild(avatar);

  topbar.appendChild(actions);
  return topbar;
}

/* ============================================================
   BOTTOM NAV BUILDER (mobile)
   ============================================================ */
function buildBottomNav() {
  const nav = document.createElement('nav');
  nav.className = 'bottom-nav';
  nav.id = 'bottom-nav';
  nav.setAttribute('aria-label', 'Navegação inferior');

  const bnItems = NAV_ITEMS.filter(n => n.bottomNav);

  bnItems.forEach((item, index) => {
    // FAB for "Adicionar" in the middle
    if (index === 2) {
      const fab = document.createElement('a');
      fab.href = './adicionar.html';
      fab.id = 'bn-add-fab';
      fab.className = 'bottom-nav-fab';
      fab.setAttribute('aria-label', 'Adicionar carrinho');
      fab.appendChild(buildIcon('M12 5v14|M5 12h14', { strokeWidth: '2.5' }));
      nav.appendChild(fab);
    }

    const a = document.createElement('a');
    a.href = item.href;
    a.id = 'bn-' + item.id;
    a.className = 'bottom-nav-item';

    const iconWrap = document.createElement('div');
    iconWrap.className = 'bottom-nav-icon';
    iconWrap.appendChild(buildIcon(item.bnIcon || item.icon));
    a.appendChild(iconWrap);

    const labelEl = document.createElement('span');
    labelEl.className = 'bottom-nav-label';
    labelEl.textContent = item.label.split(' ')[0]; // First word only on mobile
    a.appendChild(labelEl);

    nav.appendChild(a);
  });

  return nav;
}

/* ============================================================
   OVERLAY
   ============================================================ */
function buildOverlay() {
  const overlay = document.createElement('div');
  overlay.id = 'sidebar-overlay';
  overlay.className = 'sidebar-overlay';
  overlay.setAttribute('aria-hidden', 'true');
  return overlay;
}

/* ============================================================
   SHELL INIT — chamado por cada página interna
   ============================================================ */
function initShell(pageTitle) {
  const body = document.body;

  // Create app shell structure
  const appShell = document.createElement('div');
  appShell.className = 'app-shell';

  const sidebar = buildSidebar();
  appShell.appendChild(sidebar);
  appShell.appendChild(buildOverlay());

  const appMain = document.createElement('div');
  appMain.className = 'app-main';
  appMain.appendChild(buildTopbar(pageTitle));

  // Move existing body content into page-content
  const pageContent = document.createElement('main');
  pageContent.className = 'page-content';
  pageContent.id = 'page-content';

  // Move all existing children (except scripts) into page-content
  const children = Array.from(body.children);
  children.forEach(child => {
    if (child.tagName !== 'SCRIPT') {
      pageContent.appendChild(child);
    }
  });

  appMain.appendChild(pageContent);
  appShell.appendChild(appMain);

  // Bottom nav (mobile)
  body.appendChild(appShell);
  body.appendChild(buildBottomNav());

  // Toast container
  if (!document.getElementById('toast-container')) {
    const toastContainer = document.createElement('div');
    toastContainer.id = 'toast-container';
    toastContainer.className = 'toast-container';
    toastContainer.setAttribute('role', 'status');
    toastContainer.setAttribute('aria-live', 'polite');
    body.appendChild(toastContainer);
  }
}
