/**
 * cars.js — Hot Wheels Collector
 * Camada de adaptação/compatibilidade para a UI existente.
 * Redireciona todas as chamadas para a nova arquitetura em HW.services!
 */

'use strict';

const CarsManager = (() => {

  async function getAll(params = {}) {
    return await window.HW.services.collection.getUserCars(params);
  }

  async function getById(id) {
    const { data } = await window.HW.services.collection.getUserCars({ pageSize: 10000 });
    const car = (data || []).find(c => c.id === id || c.car_id === id);
    if (!car) return { data: null, error: { message: 'Carrinho não encontrado.' } };
    return { data: car, error: null };
  }

  async function add(carData) {
    return await window.HW.services.collection.addUserCar(carData);
  }

  async function update(id, updates) {
    // Atualização suportada pela nova camada de serviço
    return await window.HW.services.collection.addUserCar({ id, ...updates });
  }

  async function remove(id) {
    return await window.HW.services.collection.removeUserCar(id);
  }

  async function toggleFavorite(carId) {
    return await window.HW.services.favorites.toggleFavorite(carId);
  }

  function getStats() {
    // Retorno síncrono compatível com a UI atual
    const userCars = JSON.parse(localStorage.getItem('hw_user_collection_v2') || '[]');
    const total = userCars.length;
    const byStatus = { own: 0, want: 0, searching: 0, trade: 0, sold: 0, duplicate: 0 };
    const byYear = {};
    const bySeries = {};
    const byManufacturer = {};
    let totalValue = 0;
    let favorites = 0;

    userCars.forEach(car => {
      const st = car.status || 'own';
      byStatus[st] = (byStatus[st] || 0) + 1;
      if (car.year) byYear[car.year] = (byYear[car.year] || 0) + 1;
      if (car.series) bySeries[car.series] = (bySeries[car.series] || 0) + 1;
      if (car.manufacturer) byManufacturer[car.manufacturer] = (byManufacturer[car.manufacturer] || 0) + 1;
      if (car.estimated_value || car.purchase_price) totalValue += Number(car.estimated_value || car.purchase_price);
      if (car.is_favorite) favorites++;
    });

    return { total, byStatus, byYear, bySeries, byManufacturer, totalValue, favorites };
  }

  const STATUS_LABELS = {
    own:       'Possuo',
    want:      'Quero',
    searching: 'Procurando',
    trade:     'Troca',
    sold:      'Vendido',
    duplicate: 'Duplicado',
  };

  const STATUS_BADGE = {
    own:       'badge-own',
    want:      'badge-want',
    searching: 'badge-searching',
    trade:     'badge-trade',
    sold:      'badge-sold',
    duplicate: 'badge-duplicate',
  };

  function getStatusLabel(status) { return STATUS_LABELS[status] ?? status; }
  function getStatusBadgeClass(status) { return STATUS_BADGE[status] ?? 'badge-gray'; }

  return {
    getAll, getById, add, update, remove,
    toggleFavorite, getStats, getStatusLabel, getStatusBadgeClass,
    STATUS_LABELS,
  };
})();

/**
 * Scanner & IA Stubs (Preparados para Etapas 13 e 14)
 */
const Scanner = (() => {
  function isSupported() {
    return 'BarcodeDetector' in window;
  }

  async function scanBarcode() {
    throw new Error('Scanner não implementado. Disponível na Etapa 13.');
  }

  async function identifyByPhoto() {
    throw new Error('Identificação por foto não implementada. Disponível na Etapa 14 (IA).');
  }

  return { isSupported, scanBarcode, identifyByPhoto };
})();

// Expor globalmente no HW
window.HW = Object.assign(window.HW || {}, {
  cars: CarsManager,
  scanner: Scanner
});
