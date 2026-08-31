/**
 * wishlist.service.js — Hot Wheels Collector
 * Camada de serviço para a Lista de Desejos do Usuário (`user_wishlist`).
 */

'use strict';

const WishlistService = (() => {

  const STORAGE_KEY = 'hw_user_wishlist_v1';
  let _localWishlist = _loadWishlist();

  function _loadWishlist() {
    try {
      const data = localStorage.getItem(STORAGE_KEY);
      return data ? JSON.parse(data) : [];
    } catch (e) {
      return [];
    }
  }

  function _saveWishlist() {
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(_localWishlist));
    } catch (e) {}
  }

  async function getWishlist() {
    const client = window.HW?.supabase?.getClient();
    const user = window.HW?.auth?.getUser();

    if (client && user) {
      const { data } = await client.from('user_wishlist').select('*, car:cars(*)').eq('user_id', user.id);
      if (data) return { data, error: null };
    }

    return { data: _localWishlist, error: null };
  }

  async function addToWishlist({ car_id, priority = 'medium', max_price = null, notes = '' }) {
    const client = window.HW?.supabase?.getClient();
    const user = window.HW?.auth?.getUser();

    if (client && user) {
      const payload = { user_id: user.id, car_id, priority, max_price, notes };
      const { data, error } = await client.from('user_wishlist').upsert(payload).select().single();
      if (!error) return { data, error: null };
    }

    const newItem = { id: 'w_' + Date.now(), car_id, priority, max_price, notes, created_at: new Date().toISOString() };
    _localWishlist.push(newItem);
    _saveWishlist();
    return { data: newItem, error: null };
  }

  async function removeFromWishlist(id) {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      await client.from('user_wishlist').delete().eq('id', id);
    }
    _localWishlist = _localWishlist.filter(w => w.id !== id && w.car_id !== id);
    _saveWishlist();
    return { error: null };
  }

  return {
    getWishlist,
    addToWishlist,
    removeFromWishlist
  };
})();

// Expor globalmente no namespace HW.services
window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    wishlist: WishlistService
  })
});
