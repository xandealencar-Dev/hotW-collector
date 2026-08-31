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
  let _session = null;
  const PUBLIC_PAGES = ['login.html', 'cadastro.html', 'index.html'];

  /**
   * Inicializar e verificar sessão real no Supabase Auth
   */
  async function checkSession() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      try {
        const { data: { session } } = await client.auth.getSession();
        if (session) {
          _session = session;
          return session;
        }
      } catch (err) {
        console.warn('[AuthManager] Erro ao obter sessão do Supabase:', err);
      }
    }
    const fake = sessionStorage.getItem('hw-dev-logged-in') === 'true';
    if (fake && !_session) {
      _session = { user: { email: 'user@portablegarage.app', id: 'dev-user-001' } };
    }
    return _session;
  }

  /**
   * Guard de rota com redirecionamento automático
   */
  async function guard() {
    await checkSession();
    const page = window.location.pathname.split('/').pop() || 'index.html';

    // Se estiver em página pública e JÁ ESTIVER LOGADO -> vai direto para colecao.html
    if (PUBLIC_PAGES.includes(page)) {
      if (_session && (page === 'login.html' || page === 'index.html' || page === 'cadastro.html')) {
        const targetUrl = page === 'index.html' ? './pages/colecao.html' : './colecao.html';
        window.location.replace(targetUrl);
      }
      return;
    }

    // Se estiver em página privada e NÃO estive logado -> vai para login.html
    if (!_session) {
      const loginUrl = page.includes('/pages/') ? './login.html' : './pages/login.html';
      // Permite navegação se for dev fallback
      if (sessionStorage.getItem('hw-dev-logged-in') !== 'true') {
        window.location.replace(loginUrl);
      }
    }
  }

  async function login(email, password) {
    if (!email || !password) return { error: { message: 'Email e senha são obrigatórios.' } };
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) return { error: { message: 'Email inválido.' } };
    if (password.length < 6) return { error: { message: 'Senha deve ter pelo menos 6 caracteres.' } };

    const client = window.HW?.supabase?.getClient();
    if (client) {
      try {
        const { data, error } = await client.auth.signInWithPassword({ email, password });
        if (error) return { error };
        _session = data.session;
        return { data, error: null };
      } catch (err) {
        console.warn('[AuthManager] Supabase login error fallback:', err);
      }
    }

    sessionStorage.setItem('hw-dev-logged-in', 'true');
    _session = { user: { email, id: 'dev-user-001' } };
    return { data: _session, error: null };
  }

  async function signUp(email, password, name) {
    if (!email || !password || !name) return { error: { message: 'Todos os campos são obrigatórios.' } };
    if (password.length < 6) return { error: { message: 'Senha deve ter pelo menos 6 caracteres.' } };

    const client = window.HW?.supabase?.getClient();
    if (client) {
      try {
        const { data, error } = await client.auth.signUp({
          email,
          password,
          options: { data: { name } }
        });
        if (error) return { error };
        _session = data.session;
        return { data, error: null };
      } catch (err) {
        console.warn('[AuthManager] Supabase signUp error fallback:', err);
      }
    }

    _session = { user: { email, id: 'dev-user-001', name } };
    sessionStorage.setItem('hw-dev-logged-in', 'true');
    return { data: _session, error: null };
  }

  async function logout() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      try {
        await client.auth.signOut();
      } catch (err) {
        console.warn('[AuthManager] Error on signOut:', err);
      }
    }
    _session = null;
    sessionStorage.removeItem('hw-dev-logged-in');
    const path = window.location.pathname;
    const loginUrl = path.includes('/pages/') ? './login.html' : './pages/login.html';
    window.location.href = loginUrl;
  }

  function getUser() {
    return _session?.user ?? null;
  }

  function isLoggedIn() {
    return !!_session || sessionStorage.getItem('hw-dev-logged-in') === 'true';
  }

  return { guard, checkSession, login, signUp, logout, getUser, isLoggedIn };
})();

// Expose
if (window.HW) {
  window.HW.auth = AuthManager;
} else {
  window.HW = { auth: AuthManager };
}
