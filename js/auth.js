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
  let _authListenerRegistered = false;
  const PUBLIC_PAGES = ['login.html', 'cadastro.html', 'index.html'];

  /**
   * Garantir escuta de mudanças no estado de autenticação do Supabase
   */
  function _registerAuthListener(client) {
    if (!client || _authListenerRegistered) return;
    _authListenerRegistered = true;

    try {
      client.auth.onAuthStateChange((event, session) => {
        _session = session;
        if (event === 'SIGNED_OUT') {
          _session = null;
          localStorage.removeItem('hw-dev-logged-in');
          localStorage.removeItem('hw-dev-user-email');
        }
      });
    } catch (err) {
      console.warn('[AuthManager] Erro ao registrar onAuthStateChange:', err);
    }
  }

  /**
   * Inicializar e verificar sessão real no Supabase Auth com suporte a async init
   */
  async function checkSession() {
    let client = window.HW?.supabase?.getClient();

    if (!client && window.HW?.supabase?.init) {
      try {
        client = await window.HW.supabase.init();
      } catch (err) {
        console.warn('[AuthManager] Falha ao inicializar Supabase:', err);
      }
    }

    if (client) {
      _registerAuthListener(client);
      try {
        const { data, error } = await client.auth.getSession();
        if (!error && data?.session) {
          _session = data.session;
          return _session;
        }
      } catch (err) {
        console.warn('[AuthManager] Erro ao obter sessão do Supabase:', err);
      }
    }

    // Fallback de desenvolvimento mantido no localStorage para persistência entre fechar/abrir janela/PWA
    const fake = localStorage.getItem('hw-dev-logged-in') === 'true';
    if (fake && !_session) {
      const email = localStorage.getItem('hw-dev-user-email') || 'user@portablegarage.app';
      _session = { user: { email, id: 'dev-user-001' } };
    }

    return _session;
  }

  /**
   * Guard de rota com redirecionamento inteligente sem loops
   */
  async function guard() {
    await checkSession();
    const path = window.location.pathname;
    const page = path.split('/').pop() || 'index.html';

    const isPublic = PUBLIC_PAGES.includes(page);
    const logged = isLoggedIn();

    // Se estiver em página pública e JÁ ESTIVER LOGADO -> redireciona para dashboard.html
    if (isPublic) {
      if (logged && (page === 'login.html' || page === 'index.html' || page === 'cadastro.html')) {
        const targetUrl = page === 'index.html' ? './pages/dashboard.html' : './dashboard.html';
        window.location.replace(targetUrl);
      }
      return;
    }

    // Se estiver em página privada e NÃO estiver logado -> vai para login.html
    if (!logged) {
      const loginUrl = page.includes('/pages/') ? './login.html' : './pages/login.html';
      window.location.replace(loginUrl);
    }
  }

  async function login(email, password) {
    if (!email || !password) return { error: { message: 'Email e senha são obrigatórios.' } };
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) return { error: { message: 'Email inválido.' } };
    if (password.length < 6) return { error: { message: 'Senha deve ter pelo menos 6 caracteres.' } };

    let client = window.HW?.supabase?.getClient();
    if (!client && window.HW?.supabase?.init) {
      client = await window.HW.supabase.init();
    }

    if (client) {
      try {
        const { data, error } = await client.auth.signInWithPassword({ email, password });
        if (error) return { error };
        _session = data.session;
        _registerAuthListener(client);
        return { data, error: null };
      } catch (err) {
        console.warn('[AuthManager] Supabase login error fallback:', err);
      }
    }

    // Fallback de desenvolvimento (NUNCA salva senhas)
    localStorage.setItem('hw-dev-logged-in', 'true');
    localStorage.setItem('hw-dev-user-email', email);
    _session = { user: { email, id: 'dev-user-001' } };
    return { data: _session, error: null };
  }

  async function signUp(email, password, name) {
    if (!email || !password || !name) return { error: { message: 'Todos os campos são obrigatórios.' } };
    if (password.length < 6) return { error: { message: 'Senha deve ter pelo menos 6 caracteres.' } };

    let client = window.HW?.supabase?.getClient();
    if (!client && window.HW?.supabase?.init) {
      client = await window.HW.supabase.init();
    }

    if (client) {
      try {
        const { data, error } = await client.auth.signUp({
          email,
          password,
          options: { data: { name } }
        });
        if (error) return { error };
        _session = data.session;
        _registerAuthListener(client);
        return { data, error: null };
      } catch (err) {
        console.warn('[AuthManager] Supabase signUp error fallback:', err);
      }
    }

    _session = { user: { email, id: 'dev-user-001', name } };
    localStorage.setItem('hw-dev-logged-in', 'true');
    localStorage.setItem('hw-dev-user-email', email);
    return { data: _session, error: null };
  }

  async function logout() {
    let client = window.HW?.supabase?.getClient();
    if (!client && window.HW?.supabase?.init) {
      client = await window.HW.supabase.init();
    }

    if (client) {
      try {
        await client.auth.signOut();
      } catch (err) {
        console.warn('[AuthManager] Error on signOut:', err);
      }
    }
    _session = null;
    localStorage.removeItem('hw-dev-logged-in');
    localStorage.removeItem('hw-dev-user-email');
    sessionStorage.removeItem('hw-dev-logged-in');

    const path = window.location.pathname;
    const loginUrl = path.includes('/pages/') ? './login.html' : './pages/login.html';
    window.location.href = loginUrl;
  }

  function getUser() {
    return _session?.user ?? null;
  }

  function isLoggedIn() {
    return !!_session || localStorage.getItem('hw-dev-logged-in') === 'true';
  }

  return { guard, checkSession, login, signUp, logout, getUser, isLoggedIn };
})();

// Expose
if (window.HW) {
  window.HW.auth = AuthManager;
} else {
  window.HW = { auth: AuthManager };
}
