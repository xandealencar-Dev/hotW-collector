/**
 * supabase.js — Hot Wheels Collector
 * Cliente Supabase configurável com suporte a SDK real e Fallback gracioso.
 *
 * SEGURANÇA:
 * - Credenciais lidas dinamicamente de meta tags HTML ou localStorage de configuração.
 * - Nunca expõe service_role key no cliente frontend.
 * - Anon key do Supabase é segura para o cliente (Row-Level Security garante o isolamento).
 */

'use strict';

const SupabaseClient = (() => {
  let _client = null;
  let _initialized = false;

  function _readConfig() {
    // 1. Meta tags HTML
    const urlMeta = document.querySelector('meta[name="supabase-url"]');
    const keyMeta = document.querySelector('meta[name="supabase-anon-key"]');

    let url = urlMeta?.getAttribute('content');
    let key = keyMeta?.getAttribute('content');

    // 2. Fallback de substituição via localStorage se o usuário configurou no app
    if (!url || url === 'YOUR_SUPABASE_URL') {
      try {
        const savedUrl = localStorage.getItem('hw_supabase_url');
        const savedKey = localStorage.getItem('hw_supabase_key');
        if (savedUrl && savedKey) {
          url = savedUrl;
          key = savedKey;
        }
      } catch (e) {}
    }

    return { url, key };
  }

  /**
   * Inicializa o cliente Supabase real se as credenciais estiverem configuradas.
   */
  async function init() {
    if (_initialized && _client) return _client;

    const { url, key } = _readConfig();

    if (!url || !key || url === 'YOUR_SUPABASE_URL') {
      _initialized = true;
      return null;
    }

    try {
      if (window.supabase && typeof window.supabase.createClient === 'function') {
        _client = window.supabase.createClient(url, key, {
          auth: { persistSession: true, autoRefreshToken: true, detectSessionInUrl: true }
        });
      } else {
        // Import dinâmico do SDK Supabase v2
        const supabaseSDK = await import('https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2.45.0/+esm');
        if (supabaseSDK && supabaseSDK.createClient) {
          _client = supabaseSDK.createClient(url, key, {
            auth: { persistSession: true, autoRefreshToken: true, detectSessionInUrl: true }
          });
        }
      }
    } catch (err) {
      console.warn('[HW] Erro ao conectar com o SDK do Supabase. Mantendo modo offline com fallback.', err);
      _client = null;
    }

    _initialized = true;
    return _client;
  }

  function getClient() {
    return _client;
  }

  function isConfigured() {
    const { url, key } = _readConfig();
    return !!(url && key && url !== 'YOUR_SUPABASE_URL');
  }

  function saveConfig(url, key) {
    if (url && key) {
      localStorage.setItem('hw_supabase_url', url);
      localStorage.setItem('hw_supabase_key', key);
      _initialized = false;
      _client = null;
    }
  }

  return { init, getClient, isConfigured, saveConfig };
})();

// Auto inicializar no DOM Content Loaded
document.addEventListener('DOMContentLoaded', () => {
  SupabaseClient.init();
});

window.HW = Object.assign(window.HW || {}, {
  supabase: SupabaseClient
});
