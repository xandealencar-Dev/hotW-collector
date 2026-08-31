/**
 * cars.js — Hot Wheels Collector
 * CRUD de carrinhos — stub para ETAPA 1.
 * ETAPA 3+: Implementar operações reais com Supabase.
 *
 * Status options (normalized values):
 *  'own'       → Possuo
 *  'want'      → Quero
 *  'searching' → Procurando
 *  'trade'     → Tenho para troca
 *  'sold'      → Vendido
 *  'duplicate' → Duplicado
 */

'use strict';

const CarsManager = (() => {
  // In-memory store for ETAPA 1
  let _cars = [];
  let _listeners = [];

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

  /**
   * Subscribe to data changes.
   * @param {Function} fn
   */
  function subscribe(fn) {
    _listeners.push(fn);
    return () => { _listeners = _listeners.filter(l => l !== fn); };
  }

  function _notify() {
    _listeners.forEach(fn => fn([..._cars]));
  }

  /**
   * Get all cars for current user.
   * ETAPA 3: Replace with Supabase query with RLS.
   */
  async function getAll({ status, search, isFavorite, collectionId } = {}) {
    let result = [..._cars];

    if (status)       result = result.filter(c => c.status === status);
    if (isFavorite)   result = result.filter(c => c.isFavorite);
    if (collectionId) result = result.filter(c => c.collectionId === collectionId);
    if (search) {
      const q = search.toLowerCase();
      result = result.filter(c =>
        c.name?.toLowerCase().includes(q) ||
        c.model?.toLowerCase().includes(q) ||
        c.series?.toLowerCase().includes(q) ||
        c.manufacturer?.toLowerCase().includes(q) ||
        c.color?.toLowerCase().includes(q) ||
        c.year?.toString().includes(q)
      );
    }

    return { data: result, error: null };
  }

  /**
   * Get a single car by ID.
   */
  async function getById(id) {
    const car = _cars.find(c => c.id === id);
    if (!car) return { data: null, error: { message: 'Carrinho não encontrado.' } };
    return { data: car, error: null };
  }

  /**
   * Add a new car.
   * ETAPA 3: Replace with supabase.from('cars').insert(...)
   * SEGURANÇA: Todos os campos são validados antes de salvar.
   */
  async function add(carData) {
    const validation = _validate(carData);
    if (validation.error) return { data: null, error: validation };

    // Check for duplicates
    const duplicates = _checkDuplicates(carData);
    if (duplicates.length > 0) {
      return { data: null, error: null, duplicates };
    }

    const car = {
      id: crypto.randomUUID(),
      ...carData,
      isFavorite: false,
      createdAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
    };

    _cars.unshift(car);
    _notify();
    return { data: car, error: null, duplicates: [] };
  }

  /**
   * Update a car.
   * ETAPA 3: Replace with supabase.from('cars').update(...).eq('id', id)
   */
  async function update(id, updates) {
    const validation = _validate(updates, true);
    if (validation.error) return { data: null, error: validation };

    const idx = _cars.findIndex(c => c.id === id);
    if (idx === -1) return { data: null, error: { message: 'Carrinho não encontrado.' } };

    _cars[idx] = { ..._cars[idx], ...updates, updatedAt: new Date().toISOString() };
    _notify();
    return { data: _cars[idx], error: null };
  }

  /**
   * Remove a car.
   * ETAPA 3: Replace with supabase.from('cars').delete().eq('id', id)
   */
  async function remove(id) {
    const idx = _cars.findIndex(c => c.id === id);
    if (idx === -1) return { error: { message: 'Carrinho não encontrado.' } };
    _cars.splice(idx, 1);
    _notify();
    return { error: null };
  }

  /**
   * Toggle favorite status.
   */
  async function toggleFavorite(id) {
    const idx = _cars.findIndex(c => c.id === id);
    if (idx === -1) return { error: { message: 'Carrinho não encontrado.' } };
    _cars[idx].isFavorite = !_cars[idx].isFavorite;
    _cars[idx].updatedAt = new Date().toISOString();
    _notify();
    return { data: _cars[idx], error: null };
  }

  /**
   * Get collection statistics.
   */
  function getStats() {
    const total = _cars.length;
    const byStatus = {};
    const byYear = {};
    const bySeries = {};
    const byManufacturer = {};

    let totalValue = 0;
    let favorites = 0;

    _cars.forEach(car => {
      // Status
      byStatus[car.status] = (byStatus[car.status] || 0) + 1;
      // Year
      if (car.year) byYear[car.year] = (byYear[car.year] || 0) + 1;
      // Series
      if (car.series) bySeries[car.series] = (bySeries[car.series] || 0) + 1;
      // Manufacturer
      if (car.manufacturer) byManufacturer[car.manufacturer] = (byManufacturer[car.manufacturer] || 0) + 1;
      // Value
      if (car.estimatedValue) totalValue += Number(car.estimatedValue);
      // Favorites
      if (car.isFavorite) favorites++;
    });

    return { total, byStatus, byYear, bySeries, byManufacturer, totalValue, favorites };
  }

  /* ── Validation ── */
  function _validate(data, partial = false) {
    if (!partial && !data.name?.trim()) {
      return { error: true, message: 'O nome do carrinho é obrigatório.' };
    }
    if (data.year && (data.year < 1968 || data.year > new Date().getFullYear() + 1)) {
      return { error: true, message: 'Ano inválido.' };
    }
    if (data.pricePaid && isNaN(Number(data.pricePaid))) {
      return { error: true, message: 'Preço pago deve ser um número.' };
    }
    if (data.estimatedValue && isNaN(Number(data.estimatedValue))) {
      return { error: true, message: 'Valor estimado deve ser um número.' };
    }
    return { error: false };
  }

  /* ── Duplicate detection ── */
  function _checkDuplicates(data) {
    return _cars.filter(c => {
      const sameName = c.name?.toLowerCase() === data.name?.toLowerCase();
      const sameYear = c.year === data.year;
      const sameSeries = c.series?.toLowerCase() === data.series?.toLowerCase();
      return sameName && sameYear && sameSeries;
    });
  }

  function getStatusLabel(status) { return STATUS_LABELS[status] ?? status; }
  function getStatusBadgeClass(status) { return STATUS_BADGE[status] ?? 'badge-gray'; }

  return {
    subscribe, getAll, getById, add, update, remove,
    toggleFavorite, getStats, getStatusLabel, getStatusBadgeClass,
    STATUS_LABELS,
  };
})();

/**
 * scanner.js stub — preparado para futura implementação.
 * ETAPA 13: Implementar leitura de código de barras e reconhecimento de imagem.
 */
const Scanner = (() => {
  // TODO(etapa-13): Implementar com BarcodeDetector API ou ZXing
  // TODO(etapa-14): Integrar IA para reconhecimento de modelo por foto

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

// Expose
if (window.HW) {
  window.HW.cars    = CarsManager;
  window.HW.scanner = Scanner;
} else {
  window.HW = { cars: CarsManager, scanner: Scanner };
}
