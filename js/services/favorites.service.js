/**
 * favorites.service.js — Hot Wheels Collector
 * Camada de serviço para os Favoritos do Usuário (`user_favorites`).
 */

'use strict';

const FavoritesService = (() => {

  const STORAGE_KEY = 'hw_user_favorites_v1';
  let _localFavorites = _loadFavorites();

  function _loadFavorites() {
    try {
      const data = localStorage.getItem(STORAGE_KEY);
      return data ? JSON.parse(data) : [];
    } catch (e) {
      return [];
    }
  }

  function _saveFavorites() {
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(_localFavorites));
    } catch (e) {}
  }

  async function getFavorites() {
    const client = window.HW?.supabase?.getClient();
    const user = window.HW?.auth?.getUser();

    if (client && user) {
      const { data } = await client.from('user_favorites').select('*, car:cars(*)').eq('user_id', user.id);
      if (data) return { data, error: null };
    }

    return { data: _localFavorites, error: null };
  }

  async function toggleFavorite(carId) {
    const client = window.HW?.supabase?.getClient();
    const user = window.HW?.auth?.getUser();

    if (client && user) {
      // Checar se já é favorito
      const { data: existing } = await client.from('user_favorites')
        .select('id')
        .eq('user_id', user.id)
        .eq('car_id', carId)
        .single();

      if (existing) {
        await client.from('user_favorites').delete().eq('id', existing.id);
        return { isFavorite: false };
      } else {
        await client.from('user_favorites').insert({ user_id: user.id, car_id: carId });
        return { isFavorite: true };
      }
    }

    // Local fallback
    const idx = _localFavorites.indexOf(carId);
    let isFav = false;
    if (idx >= 0) {
      _localFavorites.splice(idx, 1);
      isFav = false;
    } else {
      _localFavorites.push(carId);
      isFav = true;
    }
    _saveFavorites();
    return { isFavorite: isFav };
  }

  function isFavorite(carId) {
    return _localFavorites.includes(carId);
  }

  return {
    getFavorites,
    toggleFavorite,
    isFavorite
  };
})();

// Expor globalmente no namespace HW.services
window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    favorites: FavoritesService
  })
});
