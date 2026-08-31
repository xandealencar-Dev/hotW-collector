/**
 * catalog.service.js — Hot Wheels Collector
 * Camada de serviço para o Catálogo Global de Miniaturas (Migração 007-010).
 *
 * Suporta o modelo relacional refinado:
 *  - Castings, Lançamentos, Séries, SubSéries, Fabricantes, Categorias
 *  - Tabela N:M de Características Especializadas (Features: TH, STH, ZAMAC, RLC)
 *  - Fonte Única da Verdade em Identificadores (car_identifiers)
 */

'use strict';

const CatalogService = (() => {

  // Demo fallback estático refinado
  const DEMO_CATALOG = [
    {
      id: '55555555-5555-5555-5555-555555555501',
      casting_id: 'c1111111-1111-1111-1111-111111111101',
      casting_name: 'Porsche 911 GT3',
      name: 'Porsche 911 GT3',
      release_year: 2024,
      model_year: 2022,
      manufacturer: 'Porsche',
      manufacturer_id: '11111111-1111-1111-1111-111111111101',
      series: 'Mainline 2024',
      series_id: '33333333-3333-3333-3333-333333333301',
      category: 'Sports Car',
      category_id: '22222222-2222-2222-2222-222222222201',
      packaging_type: 'Long Card',
      scale: '1:64',
      primary_color: 'Azul Metálico',
      features: [],
      description: 'Edição de alta performance do esportivo alemão.',
      identifiers: [
        { type: 'SKU', value: 'HKG42-D7C1' },
        { type: 'Barcode', value: '0887961987654' },
        { type: 'Collector Number', value: '015/250' }
      ]
    },
    {
      id: '55555555-5555-5555-5555-555555555502',
      casting_id: 'c1111111-1111-1111-1111-111111111102',
      casting_name: 'Nissan Skyline GT-R R34',
      name: 'Nissan Skyline GT-R (R34)',
      release_year: 2023,
      model_year: 1999,
      manufacturer: 'Nissan',
      manufacturer_id: '11111111-1111-1111-1111-111111111102',
      series: 'Car Culture',
      series_id: '33333333-3333-3333-3333-333333333302',
      category: 'JDM',
      category_id: '22222222-2222-2222-2222-222222222202',
      packaging_type: 'Box Set',
      scale: '1:64',
      primary_color: 'Branco Pérola',
      features: ['Premium'],
      description: 'Lenda JDM da série Car Culture.',
      identifiers: [
        { type: 'SKU', value: 'FLC33-D7C2' },
        { type: 'Barcode', value: '0887961987661' },
        { type: 'Collector Number', value: '01/05' }
      ]
    },
    {
      id: '55555555-5555-5555-5555-555555555503',
      casting_id: 'c1111111-1111-1111-1111-111111111103',
      casting_name: 'Dodge Charger Daytona',
      name: 'Dodge Charger Daytona Super Treasure Hunt',
      release_year: 2024,
      model_year: 1969,
      manufacturer: 'Dodge',
      manufacturer_id: '11111111-1111-1111-1111-111111111104',
      series: 'Mainline 2024',
      series_id: '33333333-3333-3333-3333-333333333301',
      category: 'Muscle',
      category_id: '22222222-2222-2222-2222-222222222203',
      packaging_type: 'Long Card',
      scale: '1:64',
      primary_color: 'Vermelho Spectraflame',
      features: ['Super Treasure Hunt'],
      description: 'Super Treasure Hunt com tinta Spectraflame e pneu de borracha.',
      identifiers: [
        { type: 'SKU', value: 'FYF29-STH' },
        { type: 'Barcode', value: '0887961987678' },
        { type: 'Collector Number', value: '205/250' }
      ]
    }
  ];

  /**
   * Consultar o catálogo global com filtros avançados
   */
  async function searchCatalog({
    search = '',
    manufacturerId = null,
    seriesId = null,
    categoryId = null,
    year = null,
    feature = null,
    page = 1,
    pageSize = 24
  } = {}) {
    const client = window.HW?.supabase?.getClient();

    if (client) {
      try {
        let query = client.from('cars').select(`
          *,
          casting:castings(name, designer),
          manufacturer:manufacturers(name),
          series:series(name),
          category:categories(name),
          packaging_type:packaging_types(name),
          features:car_features(feature:features(name)),
          identifiers:car_identifiers(identifier_type, identifier_value)
        `, { count: 'exact' });

        if (search) {
          query = query.or(`name.ilike.%${search}%,description.ilike.%${search}%`);
        }
        if (manufacturerId) query = query.eq('manufacturer_id', manufacturerId);
        if (seriesId) query = query.eq('series_id', seriesId);
        if (categoryId) query = query.eq('category_id', categoryId);
        if (year) query = query.eq('release_year', year);

        const from = (page - 1) * pageSize;
        const to = from + pageSize - 1;
        query = query.range(from, to).order('release_year', { ascending: false });

        const { data, count, error } = await query;
        if (!error && data) {
          return { data, total: count || data.length, page, pageSize, error: null };
        }
      } catch (err) {
        console.warn('[CatalogService] Supabase fallback to demo catalog:', err);
      }
    }

    // Fallback local
    let result = [...DEMO_CATALOG];
    if (search) {
      const q = search.toLowerCase();
      result = result.filter(c =>
        c.name.toLowerCase().includes(q) ||
        c.casting_name.toLowerCase().includes(q) ||
        c.manufacturer.toLowerCase().includes(q) ||
        (c.identifiers && c.identifiers.some(i => i.identifier_value.toLowerCase().includes(q)))
      );
    }
    if (manufacturerId) result = result.filter(c => c.manufacturer_id === manufacturerId);
    if (seriesId) result = result.filter(c => c.series_id === seriesId);
    if (categoryId) result = result.filter(c => c.category_id === categoryId);
    if (year) result = result.filter(c => c.release_year === parseInt(year));
    if (feature) result = result.filter(c => c.features.includes(feature));

    const total = result.length;
    const paginated = result.slice((page - 1) * pageSize, page * pageSize);

    return { data: paginated, total, page, pageSize, error: null };
  }

  /** Obter Fabricantes */
  async function getManufacturers() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('manufacturers').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '11111111-1111-1111-1111-111111111101', name: 'Porsche', country: 'Alemanha' },
      { id: '11111111-1111-1111-1111-111111111102', name: 'Nissan', country: 'Japão' },
      { id: '11111111-1111-1111-1111-111111111103', name: 'Toyota', country: 'Japão' },
      { id: '11111111-1111-1111-1111-111111111104', name: 'Dodge', country: 'Estados Unidos' }
    ];
  }

  /** Obter Categorias */
  async function getCategories() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('categories').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '22222222-2222-2222-2222-222222222201', name: 'Sports Car' },
      { id: '22222222-2222-2222-2222-222222222202', name: 'JDM' },
      { id: '22222222-2222-2222-2222-222222222203', name: 'Muscle' }
    ];
  }

  /** Obter Séries */
  async function getSeries() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('series').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '33333333-3333-3333-3333-333333333301', name: 'Mainline 2024', year: 2024 },
      { id: '33333333-3333-3333-3333-333333333302', name: 'Car Culture', year: 2023 }
    ];
  }

  /** Obter Características/Features */
  async function getFeatures() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('features').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: 'f1', name: 'Treasure Hunt', category: 'Rarity' },
      { id: 'f2', name: 'Super Treasure Hunt', category: 'Rarity' },
      { id: 'f3', name: 'ZAMAC', category: 'Store Exclusive' },
      { id: 'f4', name: 'RLC Exclusive', category: 'Membership' }
    ];
  }

  return {
    searchCatalog,
    getManufacturers,
    getCategories,
    getSeries,
    getFeatures
  };
})();

window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    catalog: CatalogService
  })
});
