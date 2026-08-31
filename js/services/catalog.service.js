/**
 * catalog.service.js — Hot Wheels Collector
 * Serviço completo de consulta, pesquisa, filtragem e gestão de imagens do Catálogo Global.
 *
 * CORREÇÕES APLICADAS:
 *  - Resolução inteligente de IDs (suporta tanto cars.id quanto user_cars.id -> car_id)
 *  - Consultas resilientes com fallbacks sem suprimir erros no console
 *  - Gestão de imagens catalográficas (car_images) e upload para o Supabase Storage (/catalog/)
 */

'use strict';

const CatalogService = (() => {

  // Demo Fallback estático de catálogo com imagens de demonstração
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
      primary_image_url: null,
      images: [],
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
      primary_image_url: null,
      images: [],
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
      primary_image_url: null,
      images: [],
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
      primary_image_url: null,
      images: [],
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
   * Resoluções de ID: Mapeia um ID que pode ser um user_cars.id ou um cars.id
   */
  async function _resolveCarId(id) {
    if (!id) return null;

    // Checar primeiro se é um ID no acervo do usuário
    try {
      const userCarsStore = JSON.parse(localStorage.getItem('hw_user_collection_v2') || '[]');
      const userCar = userCarsStore.find(uc => uc.id === id);
      if (userCar && userCar.car_id) {
        return userCar.car_id;
      }
    } catch (e) {}

    return id;
  }

  /**
   * Obter carrinho por ID com tratamento resiliente e log de erros
   */
  async function getCarById(rawId) {
    const carId = await _resolveCarId(rawId);
    const client = window.HW?.supabase?.getClient();

    if (client && carId) {
      try {
        const { data: carData, error: carError } = await client.from('cars')
          .select(`
            *,
            casting:castings(name, designer),
            manufacturer:manufacturers(name, country),
            series:series(name, year),
            subseries:subseries(name),
            category:categories(name),
            packaging_type:packaging_types(name)
          `)
          .eq('id', carId)
          .single();

        if (carError) {
          console.warn('[CatalogService.getCarById] Erro na consulta Supabase cars:', carError);
        } else if (carData) {
          // Buscar imagens do catálogo
          const { data: images } = await client.from('car_images').select('*').eq('car_id', carId);
          // Buscar identificadores
          const { data: identifiers } = await client.from('car_identifiers').select('*').eq('car_id', carId);
          // Buscar características
          const { data: carFeatures } = await client.from('car_features').select('feature:features(name)').eq('car_id', carId);

          const primaryImg = (images || []).find(i => i.is_primary) || (images || [])[0];

          const fullCar = {
            ...carData,
            primary_image_url: primaryImg?.image_url || null,
            images: images || [],
            identifiers: identifiers || [],
            features: (carFeatures || []).map(f => f.feature?.name).filter(Boolean)
          };

          return { data: fullCar, error: null };
        }
      } catch (err) {
        console.error('[CatalogService.getCarById] Exceção de rede/Supabase:', err);
      }
    }

    // Fallback local robusto
    const found = DEMO_CATALOG.find(c => c.id === carId || c.casting_id === carId);
    if (found) {
      return { data: found, error: null };
    }

    // Se o ID for de um item criado localmente sem modelo no DEMO_CATALOG
    try {
      const userCarsStore = JSON.parse(localStorage.getItem('hw_user_collection_v2') || '[]');
      const localCar = userCarsStore.find(c => c.id === rawId || c.car_id === carId);
      if (localCar) {
        const synthetic = {
          id: localCar.car_id || localCar.id,
          name: localCar.name || 'Modelo Cadastrado',
          casting_name: localCar.name,
          release_year: localCar.year || new Date().getFullYear(),
          manufacturer: localCar.manufacturer || 'Hot Wheels',
          series: localCar.series || 'Mainline',
          category: 'Sports Car',
          scale: '1:64',
          primary_color: localCar.color || 'Não informada',
          primary_image_url: localCar.image_url || null,
          images: localCar.image_url ? [{ image_url: localCar.image_url, is_primary: true }] : [],
          description: localCar.notes || 'Carrinho da coleção do usuário.',
          identifiers: []
        };
        return { data: synthetic, error: null };
      }
    } catch (e) {}

    return {
      data: null,
      error: { message: `Modelo não encontrado no catálogo (ID: ${rawId}).` }
    };
  }

  /**
   * Upload de imagem de catálogo para o Supabase Storage (/catalog/{car_id}/...)
   */
  async function uploadCarImage({ carId, file, isPrimary = true, imageType = 'front' }) {
    if (!carId || !file) {
      return { data: null, error: { message: 'carId e arquivo são obrigatórios.' } };
    }

    // Validação de tipo de arquivo
    const allowedTypes = ['image/jpeg', 'image/png', 'image/webp'];
    if (!allowedTypes.includes(file.type)) {
      return { data: null, error: { message: 'Formato de imagem não permitido. Use JPG, PNG ou WEBP.' } };
    }

    // Validação de tamanho (máximo 5MB)
    if (file.size > 5 * 1024 * 1024) {
      return { data: null, error: { message: 'Tamanho máximo permitido: 5MB.' } };
    }

    const client = window.HW?.supabase?.getClient();
    const fileName = `${Date.now()}_${Math.random().toString(36).substring(2, 7)}.${file.name.split('.').pop()}`;
    const storagePath = `catalog/${carId}/${fileName}`;

    if (client) {
      try {
        // 1. Upload para o Supabase Storage bucket 'catalog'
        const { data: storageData, error: storageError } = await client.storage
          .from('catalog')
          .upload(`${carId}/${fileName}`, file, { upsert: true });

        if (storageError) {
          console.error('[CatalogService.uploadCarImage] Erro Storage:', storageError);
          return { data: null, error: storageError };
        }

        // 2. Gerar Public URL
        const { data: publicUrlData } = client.storage.from('catalog').getPublicUrl(`${carId}/${fileName}`);
        const imageUrl = publicUrlData?.publicUrl;

        // 3. Registrar na tabela public.car_images
        const { data: dbData, error: dbError } = await client.from('car_images').insert({
          car_id: carId,
          storage_path: storagePath,
          image_url: imageUrl,
          image_type: imageType,
          is_primary: isPrimary
        }).select().single();

        if (dbError) {
          console.error('[CatalogService.uploadCarImage] Erro no Banco car_images:', dbError);
          return { data: null, error: dbError };
        }

        return { data: dbData, error: null };
      } catch (err) {
        console.error('[CatalogService.uploadCarImage] Exceção:', err);
      }
    }

    // Fallback local via FileReader (dataURL) para testes em modo offline
    return new Promise((resolve) => {
      const reader = new FileReader();
      reader.onload = (e) => {
        const imageUrl = e.target.result;

        // Atualizar no DEMO_CATALOG local se aplicável
        const car = DEMO_CATALOG.find(c => c.id === carId);
        if (car) {
          if (!car.images) car.images = [];
          const imgObj = { id: 'img_' + Date.now(), storage_path: storagePath, image_url: imageUrl, image_type: imageType, is_primary: isPrimary };
          car.images.push(imgObj);
          if (isPrimary || !car.primary_image_url) car.primary_image_url = imageUrl;
        }

        resolve({
          data: { id: 'img_' + Date.now(), storage_path: storagePath, image_url: imageUrl, is_primary: isPrimary },
          error: null
        });
      };
      reader.readAsDataURL(file);
    });
  }

  /**
   * Estatísticas de imagens do catálogo
   */
  async function getImageStats() {
    const client = window.HW?.supabase?.getClient();
    let totalCars = DEMO_CATALOG.length;
    let totalImages = 0;
    let carsWithImages = 0;

    if (client) {
      try {
        const { count: carCount } = await client.from('cars').select('*', { count: 'exact', head: true });
        const { count: imgCount } = await client.from('car_images').select('*', { count: 'exact', head: true });
        if (carCount !== null) totalCars = carCount;
        if (imgCount !== null) totalImages = imgCount;
      } catch (e) {}
    } else {
      DEMO_CATALOG.forEach(c => {
        if (c.images && c.images.length) {
          totalImages += c.images.length;
          carsWithImages++;
        }
      });
    }

    return {
      totalCars,
      totalImages,
      carsWithImages,
      carsWithoutImages: Math.max(0, totalCars - carsWithImages)
    };
  }

  /** Obter carrinhos paginados */
  async function getCars({ page = 1, pageSize = 24 } = {}) {
    return await filterCars({ page, pageSize });
  }

  /** Pesquisa avançada e multitermo */
  async function searchCars({ search = '', page = 1, pageSize = 24 } = {}) {
    return await filterCars({ search, page, pageSize });
  }

  /** Filtros combináveis */
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
          images:car_images(image_url, is_primary)
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
          const mapped = data.map(c => {
            const primaryImg = (c.images || []).find(i => i.is_primary) || (c.images || [])[0];
            return {
              ...c,
              primary_image_url: primaryImg?.image_url || null
            };
          });
          return { data: mapped, total: count || mapped.length, page, pageSize, error: null };
        }
      } catch (err) {
        console.warn('[CatalogService.filterCars] Fallback local ativo:', err);
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
    uploadCarImage,
    getImageStats,
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
