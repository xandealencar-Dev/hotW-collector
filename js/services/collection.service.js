/**
 * collection.service.js — Hot Wheels Collector
 * Camada de serviço para a Coleção Pessoal do Usuário (`user_cars`).
 *
 * SEPARAÇÃO ARQUITETÔNICA IMPORTANTE:
 *  - O Catálogo Global armazena dados técnicos gerais do carrinho.
 *  - A Coleção do Usuário armazena dados de posse (preço pago, data da compra,
 *    local, condição, status 'own'/'want'/'trade'/etc. e observações pessoais).
 */

'use strict';

const CollectionService = (() => {

  const STORAGE_KEY = 'hw_user_collection_v2';
  let _localUserCars = _loadLocalCollection();

  function _loadLocalCollection() {
    try {
      const data = localStorage.getItem(STORAGE_KEY);
      return data ? JSON.parse(data) : _getInitialDemoUserCars();
    } catch (e) {
      return _getInitialDemoUserCars();
    }
  }

  function _saveLocalCollection() {
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(_localUserCars));
    } catch (e) {
      console.error('[CollectionService] Erro ao salvar no localStorage:', e);
    }
  }

  function _getInitialDemoUserCars() {
    return [
      {
        id: 'user-car-001',
        car_id: '55555555-5555-5555-5555-555555555501',
        name: 'Porsche 911 GT3',
        manufacturer: 'Porsche',
        series: 'Mainline 2024',
        year: 2024,
        color: 'Azul Metálico',
        status: 'own',
        condition: 'sealed',
        purchase_price: 15.00,
        estimated_value: 25.00,
        purchase_date: '2024-05-10',
        purchase_location: 'Loja de Brinquedos X',
        notes: 'Cartela perfeita, sem amassados.',
        is_favorite: true,
        created_at: new Date().toISOString()
      },
      {
        id: 'user-car-002',
        car_id: '55555555-5555-5555-5555-555555555502',
        name: 'Nissan Skyline GT-R (R34)',
        manufacturer: 'Nissan',
        series: 'Car Culture',
        year: 2023,
        color: 'Branco Pérola',
        status: 'own',
        condition: 'sealed',
        purchase_price: 45.00,
        estimated_value: 65.00,
        purchase_date: '2024-06-15',
        purchase_location: 'Evento Colecionadores SP',
        notes: 'Pneus de borracha Real Riders.',
        is_favorite: true,
        created_at: new Date().toISOString()
      }
    ];
  }

  /**
   * Obter carrinhos da coleção pessoal do usuário
   */
  async function getUserCars({ status = null, search = '', isFavorite = false, page = 1, pageSize = 24 } = {}) {
    const client = window.HW?.supabase?.getClient();
    const user = window.HW?.auth?.getUser();

    if (client && user) {
      try {
        let query = client.from('user_cars').select(`
          *,
          car:cars(*, manufacturer:manufacturers(name), series:series(name))
        `, { count: 'exact' }).eq('user_id', user.id);

        if (status) query = query.eq('status', status);

        const from = (page - 1) * pageSize;
        const to = from + pageSize - 1;
        query = query.range(from, to).order('created_at', { ascending: false });

        const { data, count, error } = await query;
        if (!error && data) {
          // Normalizar retorno
          const mapped = data.map(item => ({
            id: item.id,
            car_id: item.car_id,
            name: item.car?.name || 'Sem nome',
            manufacturer: item.car?.manufacturer?.name || '',
            series: item.car?.series?.name || '',
            year: item.car?.year || null,
            color: item.car?.color || '',
            status: item.status,
            condition: item.condition,
            purchase_price: item.purchase_price,
            estimated_value: item.estimated_value,
            purchase_date: item.purchase_date,
            purchase_location: item.purchase_location,
            notes: item.notes,
            created_at: item.created_at
          }));

          return { data: mapped, total: count || mapped.length, page, pageSize, error: null };
        }
      } catch (err) {
        console.warn('[CollectionService] Supabase fallback to local collection:', err);
      }
    }

    // Fallback local
    let list = [..._localUserCars];

    if (status) list = list.filter(c => c.status === status);
    if (isFavorite) list = list.filter(c => c.is_favorite);
    if (search) {
      const q = search.toLowerCase();
      list = list.filter(c =>
        c.name.toLowerCase().includes(q) ||
        (c.manufacturer && c.manufacturer.toLowerCase().includes(q)) ||
        (c.series && c.series.toLowerCase().includes(q)) ||
        (c.year && c.year.toString().includes(q))
      );
    }

    const total = list.length;
    const paginated = list.slice((page - 1) * pageSize, page * pageSize);

    return { data: paginated, total, page, pageSize, error: null };
  }

  /**
   * Adicionar um novo carrinho à coleção do usuário
   */
  async function addUserCar(carData) {
    const client = window.HW?.supabase?.getClient();
    const user = window.HW?.auth?.getUser();

    if (client && user && carData.car_id) {
      try {
        const payload = {
          user_id: user.id,
          car_id: carData.car_id,
          status: carData.status || 'owned',
          purchase_price: carData.purchase_price || null,
          estimated_value: carData.estimated_value || null,
          purchase_date: carData.purchase_date || null,
          purchase_location: carData.purchase_location || null,
          condition: carData.condition || 'sealed',
          notes: carData.notes || ''
        };
        const { data, error } = await client.from('user_cars').insert(payload).select().single();
        if (!error && data) return { data, error: null };
      } catch (err) {
        console.warn('[CollectionService] Error inserting into Supabase:', err);
      }
    }

    // Fallback Local
    const newCar = {
      id: 'uc_' + Date.now() + '_' + Math.random().toString(36).substr(2, 4),
      car_id: carData.car_id || crypto.randomUUID(),
      name: carData.name || 'Novo Carrinho',
      manufacturer: carData.manufacturer || 'Hot Wheels',
      series: carData.series || 'Mainline',
      year: carData.year || new Date().getFullYear(),
      color: carData.color || '',
      status: carData.status || 'own',
      condition: carData.condition || 'sealed',
      purchase_price: parseFloat(carData.purchase_price || carData.pricePaid) || 0,
      estimated_value: parseFloat(carData.estimated_value || carData.estimatedValue) || 0,
      purchase_date: carData.purchase_date || carData.acquisitionDate || new Date().toISOString().split('T')[0],
      purchase_location: carData.purchase_location || carData.acquisitionPlace || '',
      notes: carData.notes || '',
      is_favorite: false,
      created_at: new Date().toISOString()
    };

    _localUserCars.unshift(newCar);
    _saveLocalCollection();
    return { data: newCar, error: null };
  }

  /**
   * Remover carrinho da coleção
   */
  async function removeUserCar(id) {
    if (!id) return { error: { message: 'ID do registro não informado.' } };

    const client = window.HW?.supabase?.getClient();
    const user = window.HW?.auth?.getUser();

    if (client) {
      try {
        let query = client.from('user_cars').delete().eq('id', id);
        if (user && user.id) {
          query = query.eq('user_id', user.id);
        }
        const { error } = await query;
        if (error) {
          console.error('[CollectionService] Erro Supabase ao deletar:', error);
          return { error };
        }
      } catch (err) {
        console.error('[CollectionService] Exceção ao deletar:', err);
        return { error: { message: err.message } };
      }
    }

    _localUserCars = _localUserCars.filter(c => c.id !== id);
    _saveLocalCollection();
    return { error: null };
  }

  /**
   * Estatísticas da coleção do usuário
   */
  async function getCollectionStats() {
    const { data } = await getUserCars({ pageSize: 10000 });
    const cars = data || [];

    const stats = {
      total: cars.length,
      favorites: cars.filter(c => c.is_favorite).length,
      totalValue: cars.reduce((sum, c) => sum + (Number(c.estimated_value || c.purchase_price) || 0), 0),
      byStatus: { own: 0, want: 0, searching: 0, trade: 0, sold: 0, duplicate: 0 },
      byYear: {},
      bySeries: {},
      byManufacturer: {}
    };

    cars.forEach(c => {
      const st = c.status || 'own';
      stats.byStatus[st] = (stats.byStatus[st] || 0) + 1;

      if (c.year) stats.byYear[c.year] = (stats.byYear[c.year] || 0) + 1;
      if (c.series) stats.bySeries[c.series] = (stats.bySeries[c.series] || 0) + 1;
      if (c.manufacturer) stats.byManufacturer[c.manufacturer] = (stats.byManufacturer[c.manufacturer] || 0) + 1;
    });

    return stats;
  }

  return {
    getUserCars,
    addUserCar,
    removeUserCar,
    getCollectionStats
  };
})();

// Expor globalmente no namespace HW.services
window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    collection: CollectionService
  })
});
