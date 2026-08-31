/**
 * auth.js — Hot Wheels Collector
 * Gerenciamento de autenticação (stub para ETAPA 1).
 *
 * ETAPA 10: Conectar ao Supabase Auth.
 *
 * SEGURANÇA:
 * - Tokens NÃO armazenados em localStorage (vulnerável a XSS).
 * - Supabase Auth usa cookies HttpOnly via pkce flow.
 * - Sessão validada server-side via RLS.
 * - TODO(security): Implementar MFA (Etapa 11)
 * - TODO(security): Implementar OAuth providers — Google, GitHub (Etapa 10)
 * - TODO(security): Leaked password detection (Etapa 10)
 */

'use strict';

const AuthManager = (() => {
  // Simulated session for ETAPA 1 UI development
  let _session = null;

  // Pages that don't require authentication
  const PUBLIC_PAGES = ['login.html', 'cadastro.html', 'index.html'];

  /**
   * Check if current page requires authentication.
   * Redirect to login if not authenticated.
   * ETAPA 10: Replace with real Supabase session check.
   */
  async function guard() {
    const page = window.location.pathname.split('/').pop() || 'index.html';

    if (PUBLIC_PAGES.includes(page)) return;

    // ETAPA 1: Simula usuário logado para desenvolvimento da interface
    // ETAPA 10: Substituir por: const { data } = await supabase.auth.getSession()
    const fakeLoggedIn = sessionStorage.getItem('hw-dev-logged-in') === 'true';

    if (!fakeLoggedIn) {
      // Comment this line during UI development to stay on pages
      // window.location.replace('../pages/login.html');
    }
  }

  /**
   * Simulate login (ETAPA 1 dev mode).
   * ETAPA 10: Replace with supabase.auth.signInWithPassword()
   */
  async function login(email, password) {
    // Validação básica de entrada
    if (!email || !password) {
      return { error: { message: 'Email e senha são obrigatórios.' } };
    }

    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
      return { error: { message: 'Email inválido.' } };
    }

    if (password.length < 8) {
      return { error: { message: 'Senha deve ter pelo menos 8 caracteres.' } };
    }

    // ETAPA 1: Modo desenvolvimento — simula login
    sessionStorage.setItem('hw-dev-logged-in', 'true');
    _session = { user: { email, id: 'dev-user-001' } };
    return { data: _session, error: null };
  }

  /**
   * Simulate signup (ETAPA 1 dev mode).
   * ETAPA 10: Replace with supabase.auth.signUp()
   */
  async function signUp(email, password, name) {
    if (!email || !password || !name) {
      return { error: { message: 'Todos os campos são obrigatórios.' } };
    }

    if (password.length < 8) {
      return { error: { message: 'Senha deve ter pelo menos 8 caracteres.' } };
    }

    // ETAPA 1: Modo desenvolvimento
    _session = { user: { email, id: 'dev-user-001', name } };
    sessionStorage.setItem('hw-dev-logged-in', 'true');
    return { data: _session, error: null };
  }

  /**
   * Logout — clears all client-side state.
   * ETAPA 10: Replace with supabase.auth.signOut()
   */
  async function logout() {
    _session = null;
    sessionStorage.removeItem('hw-dev-logged-in');
    // Full page redirect to clear any cached state
    window.location.href = '../pages/login.html';
  }

  /**
   * Get current user.
   * ETAPA 10: Replace with supabase.auth.getUser()
   */
  function getUser() {
    return _session?.user ?? null;
  }

  /**
   * Check if user is logged in.
   */
  function isLoggedIn() {
    return !!_session || sessionStorage.getItem('hw-dev-logged-in') === 'true';
  }

  return { guard, login, signUp, logout, getUser, isLoggedIn };
})();

// Expose
if (window.HW) {
  window.HW.auth = AuthManager;
} else {
  window.HW = { auth: AuthManager };
}
