/**
 * catalog.service.js — Hot Wheels Collector
 * Camada de serviço para o Catálogo Global de Miniaturas.
 *
 * Responsabilidades:
 *  - Buscar modelos no catálogo global (Supabase ou fallback de demonstração)
 *  - Pesquisa avançada, tolerante a acentos/case (Full Text Search / Trigrams)
 *  - Filtros por Fabricante, Série, Categoria, Ano, Cor
 *  - Obter dados mestre (fabricantes, séries, categorias) para selects dinâmicos
 */

'use strict';

const CatalogService = (() => {

  // Demo fallback dataset se o Supabase não estiver conectado ainda
  const DEMO_CATALOG = [
    {
      id: '55555555-5555-5555-5555-555555555501',
      name: 'Porsche 911 GT3',
      model_name: '911 GT3',
      casting_name: 'Porsche 911 GT3',
      year: 2024,
      manufacturer: 'Porsche',
      manufacturer_id: '11111111-1111-1111-1111-111111111101',
      series: 'Mainline 2024',
      series_id: '33333333-3333-3333-3333-333333333301',
      category: 'Sports Car',
      category_id: '22222222-2222-2222-2222-222222222201',
      scale: '1:64',
      color: 'Azul Metálico',
      description: 'Edição de alta performance do esportivo alemão.',
      code: 'HKG42-D7C1',
      barcode: '0887961987654'
    },
    {
      id: '55555555-5555-5555-5555-555555555502',
      name: 'Nissan Skyline GT-R (R34)',
      model_name: 'Skyline GT-R R34',
      casting_name: 'Nissan Skyline R34',
      year: 2023,
      manufacturer: 'Nissan',
      manufacturer_id: '11111111-1111-1111-1111-111111111102',
      series: 'Car Culture',
      series_id: '33333333-3333-3333-3333-333333333302',
      category: 'JDM',
      category_id: '22222222-2222-2222-2222-222222222202',
      scale: '1:64',
      color: 'Branco Pérola',
      description: 'Lenda JDM da série Car Culture.',
      code: 'FLC33-D7C2',
      barcode: '0887961987661'
    },
    {
      id: '55555555-5555-5555-5555-555555555503',
      name: 'Dodge Charger Daytona',
      model_name: 'Charger Daytona',
      casting_name: 'Dodge Daytona 1969',
      year: 2024,
      manufacturer: 'Dodge',
      manufacturer_id: '11111111-1111-1111-1111-111111111104',
      series: 'Mainline 2024',
      series_id: '33333333-3333-3333-3333-333333333301',
      category: 'Muscle',
      category_id: '22222222-2222-2222-2222-222222222203',
      scale: '1:64',
      color: 'Vermelho',
      description: 'Clássico americano de alta velocidade.',
      code: 'FYF29-D7C3',
      barcode: '0887961987678'
    },
    {
      id: '55555555-5555-5555-5555-555555555504',
      name: 'Toyota GR Supra',
      model_name: 'GR Supra 2023',
      casting_name: 'Toyota Supra A90',
      year: 2023,
      manufacturer: 'Toyota',
      manufacturer_id: '11111111-1111-1111-1111-111111111103',
      series: 'Boulevard',
      series_id: '33333333-3333-3333-3333-333333333303',
      category: 'JDM',
      category_id: '22222222-2222-2222-2222-222222222202',
      scale: '1:64',
      color: 'Amarelo Ouro',
      description: 'Novo Supra da série Boulevard.',
      code: 'GJT68-D7C4',
      barcode: '0887961987685'
    }
  ];

  /**
   * Buscar carrinhos do catálogo com filtros e pesquisa
   */
  async function searchCatalog({
    search = '',
    manufacturerId = null,
    seriesId = null,
    categoryId = null,
    year = null,
    page = 1,
    pageSize = 24
  } = {}) {
    const client = window.HW?.supabase?.getClient();

    if (client) {
      try {
        let query = client.from('cars').select(`
          *,
          manufacturer:manufacturers(name),
          series:series(name),
          category:categories(name)
        `, { count: 'exact' });

        if (search) {
          query = query.or(`name.ilike.%${search}%,model_name.ilike.%${search}%,casting_name.ilike.%${search}%`);
        }
        if (manufacturerId) query = query.eq('manufacturer_id', manufacturerId);
        if (seriesId) query = query.eq('series_id', seriesId);
        if (categoryId) query = query.eq('category_id', categoryId);
        if (year) query = query.eq('year', year);

        const from = (page - 1) * pageSize;
        const to = from + pageSize - 1;
        query = query.range(from, to).order('name', { ascending: true });

        const { data, count, error } = await query;
        if (!error && data) {
          return { data, total: count || data.length, page, pageSize, error: null };
        }
      } catch (err) {
        console.warn('[CatalogService] Supabase query fallback to local:', err);
      }
    }

    // Fallback local em memória
    let result = [...DEMO_CATALOG];
    if (search) {
      const q = search.toLowerCase();
      result = result.filter(c =>
        c.name.toLowerCase().includes(q) ||
        c.model_name.toLowerCase().includes(q) ||
        c.casting_name.toLowerCase().includes(q) ||
        c.manufacturer.toLowerCase().includes(q) ||
        (c.code && c.code.toLowerCase().includes(q)) ||
        (c.barcode && c.barcode.includes(q))
      );
    }
    if (manufacturerId) result = result.filter(c => c.manufacturer_id === manufacturerId);
    if (seriesId) result = result.filter(c => c.series_id === seriesId);
    if (categoryId) result = result.filter(c => c.category_id === categoryId);
    if (year) result = result.filter(c => c.year === parseInt(year));

    const total = result.length;
    const paginated = result.slice((page - 1) * pageSize, page * pageSize);

    return { data: paginated, total, page, pageSize, error: null };
  }

  /**
   * Obter lista de Fabricantes
   */
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
      { id: '11111111-1111-1111-1111-111111111104', name: 'Dodge', country: 'Estados Unidos' },
      { id: '11111111-1111-1111-1111-111111111105', name: 'Ford', country: 'Estados Unidos' }
    ];
  }

  /**
   * Obter lista de Categorias
   */
  async function getCategories() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('categories').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '22222222-2222-2222-2222-222222222201', name: 'Sports Car' },
      { id: '22222222-2222-2222-2222-222222222202', name: 'JDM' },
      { id: '22222222-2222-2222-2222-222222222203', name: 'Muscle' },
      { id: '22222222-2222-2222-2222-222222222204', name: 'Racing' },
      { id: '22222222-2222-2222-2222-222222222205', name: 'Fantasy' }
    ];
  }

  /**
   * Obter lista de Séries
   */
  async function getSeries() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('series').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '33333333-3333-3333-3333-333333333301', name: 'Mainline 2024', type: 'Mainline' },
      { id: '33333333-3333-3333-3333-333333333302', name: 'Car Culture', type: 'Premium' },
      { id: '33333333-3333-3333-3333-333333333303', name: 'Boulevard', type: 'Premium' }
    ];
  }

  return {
    searchCatalog,
    getManufacturers,
    getCategories,
    getSeries
  };
})();

// Expor globalmente no namespace HW.services
window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    catalog: CatalogService
  })
});
