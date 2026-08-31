/**
 * supabase.js — Hot Wheels Collector
 * Cliente Supabase configurável.
 *
 * ETAPA 1: Stub sem conexão real.
 * ETAPA 5: Preencher SUPABASE_URL e SUPABASE_ANON_KEY.
 *
 * SEGURANÇA:
 * - As chaves NÃO estão hardcoded. Lidas de meta tags no HTML
 *   (que podem ser geradas server-side ou via CI/CD).
 * - A anon key do Supabase é pública por design (row-level security garante isolamento).
 * - Nunca armazene a service_role key no frontend.
 *
 * TODO(security): Considerar BFF (Backend-for-Frontend) para operações sensíveis.
 * TODO(security): Implementar rate limiting via Supabase Edge Functions (Etapa 11).
 */

'use strict';

const SupabaseClient = (() => {
  let _client = null;
  let _initialized = false;

  /**
   * Lê configuração de meta tags HTML para evitar hardcoding.
   * <meta name="supabase-url" content="...">
   * <meta name="supabase-anon-key" content="...">
   */
  function _readConfig() {
    const urlMeta = document.querySelector('meta[name="supabase-url"]');
    const keyMeta = document.querySelector('meta[name="supabase-anon-key"]');

    const url = urlMeta?.getAttribute('content');
    const key = keyMeta?.getAttribute('content');

    return { url, key };
  }

  /**
   * Inicializa o cliente Supabase.
   * Chamado na Etapa 5 quando as credenciais forem configuradas.
   */
  async function init() {
    if (_initialized) return _client;

    const { url, key } = _readConfig();

    // Stub mode — Supabase não configurado ainda
    if (!url || !key || url === 'YOUR_SUPABASE_URL') {
      console.warn('[HW] Supabase não configurado. Operando em modo offline (ETAPA 1).');
      _initialized = true;
      return null;
    }

    // TODO(etapa-5): Descomentar quando instalar o Supabase JS SDK
    // const { createClient } = await import('https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm');
    // _client = createClient(url, key, {
    //   auth: {
    //     persistSession: true,
    //     autoRefreshToken: true,
    //     detectSessionInUrl: true,
    //   },
    // });

    _initialized = true;
    return _client;
  }

  function getClient() {
    if (!_initialized) {
      console.error('[HW] SupabaseClient.init() deve ser chamado antes de getClient().');
      return null;
    }
    return _client;
  }

  function isConfigured() {
    const { url, key } = _readConfig();
    return !!(url && key && url !== 'YOUR_SUPABASE_URL');
  }

  return { init, getClient, isConfigured };
})();

// Expose
if (window.HW) {
  window.HW.supabase = SupabaseClient;
} else {
  window.HW = { supabase: SupabaseClient };
}
