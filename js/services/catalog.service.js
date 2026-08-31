/**
 * catalog.service.js — Hot Wheels Collector
 * Serviço completo de consulta, pesquisa e filtragem do Catálogo Global.
 */

'use strict';

const CatalogService = (() => {

  // Demo Fallback estático de catálogo
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
      subseries: 'HW Exotics',
      category: 'Sports Car',
      category_id: '22222222-2222-2222-2222-222222222201',
      packaging_type: 'Long Card',
      scale: '1:64',
      primary_color: 'Azul Metálico',
      features: [],
      description: 'Edição de alta performance do esportivo alemão.',
      identifiers: [
        { identifier_type: 'SKU', identifier_value: 'HKG42-D7C1' },
        { identifier_type: 'Barcode', identifier_value: '0887961987654' },
        { identifier_type: 'Collector Number', identifier_value: '015/250' },
        { identifier_type: 'Toy Number', identifier_value: 'HKG42' }
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
      subseries: 'HW JDM Imports',
      category: 'JDM',
      category_id: '22222222-2222-2222-2222-222222222202',
      packaging_type: 'Box Set',
      scale: '1:64',
      primary_color: 'Branco Pérola',
      features: ['Premium'],
      description: 'Lenda JDM da série Car Culture com pneus Real Riders de borracha.',
      identifiers: [
        { identifier_type: 'SKU', identifier_value: 'FLC33-D7C2' },
        { identifier_type: 'Barcode', identifier_value: '0887961987661' },
        { identifier_type: 'Collector Number', identifier_value: '01/05' },
        { identifier_type: 'Toy Number', identifier_value: 'FLC33' }
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
      subseries: 'HW Muscle Mania',
      category: 'Muscle',
      category_id: '22222222-2222-2222-2222-222222222203',
      packaging_type: 'Long Card',
      scale: '1:64',
      primary_color: 'Vermelho Spectraflame',
      features: ['Super Treasure Hunt'],
      description: 'Super Treasure Hunt com tinta Spectraflame e pneus de borracha Real Riders.',
      identifiers: [
        { identifier_type: 'SKU', identifier_value: 'FYF29-STH' },
        { identifier_type: 'Barcode', identifier_value: '0887961987678' },
        { identifier_type: 'Collector Number', identifier_value: '205/250' },
        { identifier_type: 'Toy Number', identifier_value: 'FYF29' }
      ]
    },
    {
      id: '55555555-5555-5555-5555-555555555504',
      casting_id: 'c1111111-1111-1111-1111-111111111104',
      casting_name: 'Toyota GR Supra',
      name: 'Toyota GR Supra ZAMAC',
      release_year: 2023,
      model_year: 2023,
      manufacturer: 'Toyota',
      manufacturer_id: '11111111-1111-1111-1111-111111111103',
      series: 'Boulevard',
      series_id: '33333333-3333-3333-3333-333333333303',
      subseries: 'HW Imports',
      category: 'JDM',
      category_id: '22222222-2222-2222-2222-222222222202',
      packaging_type: 'Long Card',
      scale: '1:64',
      primary_color: 'Prata ZAMAC',
      features: ['ZAMAC'],
      description: 'Edição ZAMAC com acabamento em metal bruto da série Boulevard.',
      identifiers: [
        { identifier_type: 'SKU', identifier_value: 'GJT68-D7C4' },
        { identifier_type: 'Barcode', identifier_value: '0887961987685' },
        { identifier_type: 'Collector Number', identifier_value: '045/250' },
        { identifier_type: 'Toy Number', identifier_value: 'GJT68' }
      ]
    }
  ];

  /**
   * Obter carrinhos paginados
   */
  async function getCars({ page = 1, pageSize = 24 } = {}) {
    return await filterCars({ page, pageSize });
  }

  /**
   * Obter carrinho por ID
   */
  async function getCarById(id) {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      try {
        const { data, error } = await client.from('cars').select(`
          *,
          casting:castings(*),
          manufacturer:manufacturers(name, country),
          series:series(name, year),
          subseries:subseries(name, total_cars),
          category:categories(name),
          packaging_type:packaging_types(name),
          features:car_features(feature:features(name, category)),
          identifiers:car_identifiers(identifier_type, identifier_value),
          variations:car_variations(*)
        `).eq('id', id).single();

        if (!error && data) return { data, error: null };
      } catch (e) {}
    }

    const found = DEMO_CATALOG.find(c => c.id === id || c.casting_id === id);
    if (found) return { data: found, error: null };
    return { data: null, error: { message: 'Carrinho não encontrado no catálogo.' } };
  }

  /**
   * Pesquisa avançada e multitermo
   */
  async function searchCars({ search = '', page = 1, pageSize = 24 } = {}) {
    return await filterCars({ search, page, pageSize });
  }

  /**
   * Filtros combináveis (Ano, Fabricante, Série, SubSérie, Categoria, Características, Escala, Cor)
   */
  async function filterCars({
    search = '',
    releaseYear = null,
    manufacturerId = null,
    seriesId = null,
    subseriesId = null,
    categoryId = null,
    featureName = null,
    scale = null,
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
          series:series(name, year),
          subseries:subseries(name),
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
        if (subseriesId) query = query.eq('subseries_id', subseriesId);
        if (categoryId) query = query.eq('category_id', categoryId);
        if (releaseYear) query = query.eq('release_year', releaseYear);
        if (scale) query = query.eq('scale', scale);

        const from = (page - 1) * pageSize;
        const to = from + pageSize - 1;
        query = query.range(from, to).order('release_year', { ascending: false });

        const { data, count, error } = await query;
        if (!error && data) {
          return { data, total: count || data.length, page, pageSize, error: null };
        }
      } catch (err) {
        console.warn('[CatalogService] Fallback local ativo:', err);
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
        c.series.toLowerCase().includes(q) ||
        (c.subseries && c.subseries.toLowerCase().includes(q)) ||
        (c.identifiers && c.identifiers.some(i => i.identifier_value.toLowerCase().includes(q)))
      );
    }

    if (manufacturerId) result = result.filter(c => c.manufacturer_id === manufacturerId);
    if (seriesId) result = result.filter(c => c.series_id === seriesId);
    if (categoryId) result = result.filter(c => c.category_id === categoryId);
    if (releaseYear) result = result.filter(c => c.release_year === parseInt(releaseYear));
    if (featureName) result = result.filter(c => c.features.includes(featureName));
    if (scale) result = result.filter(c => c.scale === scale);

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
      { id: '33333333-3333-3333-3333-333333333302', name: 'Car Culture', year: 2023 },
      { id: '33333333-3333-3333-3333-333333333303', name: 'Boulevard', year: 2023 }
    ];
  }

  /** Obter SubSéries */
  async function getSubseries() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('subseries').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: 'sub1', name: 'HW Exotics' },
      { id: 'sub2', name: 'HW JDM Imports' },
      { id: 'sub3', name: 'HW Muscle Mania' }
    ];
  }

  /** Obter Castings */
  async function getCastings() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('castings').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: 'c1111111-1111-1111-1111-111111111101', name: 'Porsche 911 GT3', debut_year: 2006 },
      { id: 'c1111111-1111-1111-1111-111111111102', name: 'Nissan Skyline GT-R R34', debut_year: 2002 },
      { id: 'c1111111-1111-1111-1111-111111111103', name: 'Dodge Charger Daytona', debut_year: 1969 }
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
    getCars,
    getCarById,
    searchCars,
    filterCars,
    getManufacturers,
    getCategories,
    getSeries,
    getSubseries,
    getCastings,
    getFeatures
  };
})();

window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    catalog: CatalogService
  })
});
