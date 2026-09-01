/**
 * catalog.service.js — Hot Wheels Collector
 * Serviço completo de consulta, pesquisa, filtragem e gestão de imagens do Catálogo Global.
 *
 * EXPANSÃO CATÁLOGO COMPLETO DE COLECIONADOR:
 *  - Franquias, Universos, Personagens e Mídias (Filmes, Séries, Games)
 *  - Veículo Real (Modelo, Geração, Ano do Veículo Real)
 *  - Linhas Comerciais (Mainline, Premium, RLC, Silver Series, etc.)
 *  - Categorias N:M e Características Especiais
 */

'use strict';

const CatalogService = (() => {

  // Demo Fallback estático de catálogo com dados expandidos de colecionador
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
      categories: ['Sports Car', 'European', 'Supercar'],
      packaging_type: 'Long Card',
      line: 'Mainline',
      scale: '1:64',
      primary_color: 'Azul Metálico',
      primary_image_url: 'https://wtaldxcpseczlqxsopvo.supabase.co/storage/v1/object/public/catalog/55555555-5555-5555-5555-555555555501/porsche_911_gt3_front.png',
      images: [
        {
          id: '8515e019-da1c-443e-b5e7-a1ba67bcbc5f',
          image_url: 'https://wtaldxcpseczlqxsopvo.supabase.co/storage/v1/object/public/catalog/55555555-5555-5555-5555-555555555501/porsche_911_gt3_front.png',
          is_primary: true
        }
      ],
      features: [],
      real_car: {
        manufacturer: 'Porsche',
        model: '911 GT3',
        generation: '992',
        year: 2022
      },
      entertainment: null,
      short_description: 'Edição de alta performance do esportivo alemão de 510 cv.',
      description: 'Edição de alta performance do esportivo alemão com aerodinâmica ativa e motor boxer aspirado.',
      collector_notes: 'Primeiro lançamento do casting com asa traseira invertida tipo pescoço de cisne.',
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
      categories: ['JDM', 'Japanese', 'Movie'],
      packaging_type: 'Box Set',
      line: 'Car Culture',
      scale: '1:64',
      primary_color: 'Branco Pérola',
      primary_image_url: null,
      images: [],
      features: ['Premium'],
      real_car: {
        manufacturer: 'Nissan',
        model: 'Skyline GT-R',
        generation: 'BNR34',
        year: 1999
      },
      entertainment: {
        franchise: 'Fast & Furious',
        universe: 'Fast & Furious Universe',
        character: 'Brian O\'Conner',
        media: '2 Fast 2 Furious'
      },
      short_description: 'Lenda JDM com chassi em metal e pneus Real Riders.',
      description: 'Lenda JDM da série Car Culture com pneus Real Riders de borracha e pintura especial.',
      collector_notes: 'Edição altamente valorizada por colecionadores de JDM e fãs de Velozes e Furiosos.',
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
      categories: ['Muscle', 'American', 'Classic'],
      packaging_type: 'Long Card',
      line: 'Mainline',
      scale: '1:64',
      primary_color: 'Vermelho Spectraflame',
      primary_image_url: null,
      images: [],
      features: ['Super Treasure Hunt', 'Treasure Hunt'],
      real_car: {
        manufacturer: 'Dodge',
        model: 'Charger Daytona',
        generation: '1st Gen',
        year: 1969
      },
      entertainment: null,
      short_description: 'Super Treasure Hunt raro com acabamento Spectraflame.',
      description: 'Super Treasure Hunt com tinta Spectraflame, pneus de borracha Real Riders e símbolo STH dourado.',
      collector_notes: 'Projetado originalmente para dominar os ovais da NASCAR em 1969.',
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
      categories: ['JDM', 'Japanese', 'Sports Car'],
      packaging_type: 'Long Card',
      line: 'Boulevard',
      scale: '1:64',
      primary_color: 'Prata ZAMAC',
      primary_image_url: null,
      images: [],
      features: ['ZAMAC', 'Exclusive'],
      real_car: {
        manufacturer: 'Toyota',
        model: 'GR Supra',
        generation: 'A90',
        year: 2023
      },
      entertainment: null,
      short_description: 'Edição exclusiva ZAMAC com carroceria em liga de metal não pintada.',
      description: 'Edição ZAMAC com acabamento em metal bruto da série Boulevard e detalhes em tampografia.',
      collector_notes: 'Exclusividade de loja nos Estados Unidos produzida em tiragem limitada.',
      identifiers: [
        { identifier_type: 'SKU', identifier_value: 'GJT68-D7C4' },
        { identifier_type: 'Barcode', identifier_value: '0887961987685' },
        { identifier_type: 'Collector Number', identifier_value: '045/250' },
        { identifier_type: 'Toy Number', identifier_value: 'GJT68' }
      ]
    }
  ];

  /**
   * Resolver ID de carrinho (seja cars.id ou user_cars.id -> car_id)
   */
  async function _resolveCarId(id) {
    if (!id) return null;
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
   * Obter carrinho por ID com Ficha Completa de Colecionador
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
            packaging_type:packaging_types(name),
            line_type:line_types(name)
          `)
          .eq('id', carId)
          .single();

        if (carError) {
          console.warn('[CatalogService.getCarById] Erro Supabase:', carError);
        } else if (carData) {
          // Consultar tabelas de relacionamento em paralelo
          const [
            { data: images },
            { data: identifiers },
            { data: carFeatures },
            { data: carFranchises },
            { data: carCharacters },
            { data: carMedia },
            { data: carCategories },
            { data: variations }
          ] = await Promise.all([
            client.from('car_images').select('*').eq('car_id', carId),
            client.from('car_identifiers').select('*').eq('car_id', carId),
            client.from('car_features').select('feature:features(name, category)').eq('car_id', carId),
            client.from('car_franchises').select('franchise:franchises(name, company), universe:universes(name)').eq('car_id', carId),
            client.from('car_characters').select('character:characters(name, alias)').eq('car_id', carId),
            client.from('car_media').select('media:media(title, media_type, release_year, studio), vehicle_name').eq('car_id', carId),
            client.from('car_categories').select('category:categories(name)').eq('car_id', carId),
            client.from('car_variations').select('*').eq('car_id', carId)
          ]);

          const primaryImg = (images || []).find(i => i.is_primary) || (images || [])[0];

          // Estruturar entretenimento
          const franchiseObj = carFranchises && carFranchises[0];
          const characterObj = carCharacters && carCharacters[0];
          const mediaObj = carMedia && carMedia[0];

          const entertainment = (franchiseObj || characterObj || mediaObj) ? {
            franchise: franchiseObj?.franchise?.name || null,
            company: franchiseObj?.franchise?.company || null,
            universe: franchiseObj?.universe?.name || null,
            character: characterObj?.character?.name || null,
            alias: characterObj?.character?.alias || null,
            media_title: mediaObj?.media?.title || null,
            media_type: mediaObj?.media?.media_type || null,
            media_year: mediaObj?.media?.release_year || null,
            vehicle_name: mediaObj?.vehicle_name || null
          } : null;

          const categoriesList = [
            carData.category?.name,
            ...(carCategories || []).map(c => c.category?.name)
          ].filter(Boolean);

          const uniqueCategories = [...new Set(categoriesList)];

          const fullCar = {
            ...carData,
            line: carData.line_type?.name || 'Mainline',
            primary_image_url: primaryImg?.image_url || null,
            images: images || [],
            identifiers: identifiers || [],
            variations: variations || [],
            features: (carFeatures || []).map(f => f.feature?.name).filter(Boolean),
            categories: uniqueCategories,
            entertainment,
            real_car: {
              manufacturer: carData.manufacturer?.name || carData.manufacturer || 'Não informado',
              model: carData.real_car_model || carData.model_name || 'Não informado',
              generation: carData.real_car_generation || 'Não informada',
              year: carData.real_car_year || carData.model_year || carData.release_year
            }
          };

          return { data: fullCar, error: null };
        }
      } catch (err) {
        console.error('[CatalogService.getCarById] Exceção:', err);
      }
    }

    // Fallback local robusto
    const found = DEMO_CATALOG.find(c => c.id === carId || c.casting_id === carId);
    if (found) return { data: found, error: null };

    return {
      data: null,
      error: { message: `Modelo não encontrado no catálogo (ID: ${rawId}).` }
    };
  }

  /**
   * Upload de imagem de catálogo para o Supabase Storage
   */
  async function uploadCarImage({ carId, file, isPrimary = true, imageType = 'front' }) {
    if (!carId || !file) {
      return { data: null, error: { message: 'carId e arquivo são obrigatórios.' } };
    }

    const allowedTypes = ['image/jpeg', 'image/png', 'image/webp'];
    if (!allowedTypes.includes(file.type)) {
      return { data: null, error: { message: 'Formato inválido. Use JPG, PNG ou WEBP.' } };
    }

    if (file.size > 5 * 1024 * 1024) {
      return { data: null, error: { message: 'Tamanho máximo permitido: 5MB.' } };
    }

    const client = window.HW?.supabase?.getClient();
    const fileName = `${Date.now()}_${Math.random().toString(36).substring(2, 7)}.${file.name.split('.').pop()}`;
    const storagePath = `catalog/${carId}/${fileName}`;

    if (client) {
      try {
        const { data: storageData, error: storageError } = await client.storage
          .from('catalog')
          .upload(`${carId}/${fileName}`, file, { upsert: true });

        if (storageError) {
          console.error('[CatalogService.uploadCarImage] Erro Storage:', storageError);
          return { data: null, error: storageError };
        }

        const { data: publicUrlData } = client.storage.from('catalog').getPublicUrl(`${carId}/${fileName}`);
        const imageUrl = publicUrlData?.publicUrl;

        const { data: dbData, error: dbError } = await client.from('car_images').insert({
          car_id: carId,
          storage_path: storagePath,
          image_url: imageUrl,
          image_type: imageType,
          is_primary: isPrimary
        }).select().single();

        if (dbError) {
          console.error('[CatalogService.uploadCarImage] Erro car_images:', dbError);
          return { data: null, error: dbError };
        }

        return { data: dbData, error: null };
      } catch (err) {
        console.error('[CatalogService.uploadCarImage] Exceção:', err);
      }
    }

    return new Promise((resolve) => {
      const reader = new FileReader();
      reader.onload = (e) => {
        const imageUrl = e.target.result;
        const car = DEMO_CATALOG.find(c => c.id === carId);
        if (car) {
          if (!car.images) car.images = [];
          car.images.push({ id: 'img_' + Date.now(), image_url: imageUrl, is_primary: isPrimary });
          if (isPrimary || !car.primary_image_url) car.primary_image_url = imageUrl;
        }
        resolve({ data: { id: 'img_' + Date.now(), image_url: imageUrl }, error: null });
      };
      reader.readAsDataURL(file);
    });
  }

  /**
   * Filtros Combináveis Expandidos de Colecionador
   */
  async function filterCars({
    search = '',
    releaseYear = null,
    manufacturerId = null,
    seriesId = null,
    subseriesId = null,
    categoryId = null,
    lineId = null,
    franchiseId = null,
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
          line_type:line_types(name),
          features:car_features(feature:features(name)),
          images:car_images(image_url, is_primary)
        `, { count: 'exact' });

        if (search) {
          query = query.or(`name.ilike.%${search}%,casting_name.ilike.%${search}%,description.ilike.%${search}%,real_car_model.ilike.%${search}%`);
        }
        if (manufacturerId) query = query.eq('manufacturer_id', manufacturerId);
        if (seriesId) query = query.eq('series_id', seriesId);
        if (subseriesId) query = query.eq('subseries_id', subseriesId);
        if (categoryId) query = query.eq('category_id', categoryId);
        if (lineId) query = query.eq('line_id', lineId);
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
              line: c.line_type?.name || 'Mainline',
              primary_image_url: primaryImg?.image_url || null
            };
          });
          return { data: mapped, total: count || mapped.length, page, pageSize, error: null };
        }
      } catch (err) {
        console.warn('[CatalogService.filterCars] Fallback local ativo:', err);
      }
    }

    // Fallback local expandido
    let result = [...DEMO_CATALOG];

    if (search) {
      const q = search.toLowerCase();
      result = result.filter(c =>
        c.name.toLowerCase().includes(q) ||
        c.casting_name.toLowerCase().includes(q) ||
        c.manufacturer.toLowerCase().includes(q) ||
        c.series.toLowerCase().includes(q) ||
        (c.line && c.line.toLowerCase().includes(q)) ||
        (c.entertainment && c.entertainment.franchise?.toLowerCase().includes(q)) ||
        (c.entertainment && c.entertainment.character?.toLowerCase().includes(q)) ||
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

  /** Obter Linhas Comerciais */
  async function getLines() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('line_types').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: 'l1', name: 'Mainline' },
      { id: 'l2', name: 'Premium' },
      { id: 'l3', name: 'RLC' },
      { id: 'l4', name: 'Silver Series' },
      { id: 'l5', name: 'Car Culture' },
      { id: 'l6', name: 'Boulevard' },
      { id: 'l7', name: 'Fast & Furious' }
    ];
  }

  /** Obter Franquias de Entretenimento */
  async function getFranchises() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('franchises').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '99999999-9999-9999-9999-999999999901', name: 'DC Comics', company: 'Warner Bros' },
      { id: '99999999-9999-9999-9999-999999999902', name: 'Marvel', company: 'Disney' },
      { id: '99999999-9999-9999-9999-999999999903', name: 'Fast & Furious', company: 'Universal Pictures' },
      { id: '99999999-9999-9999-9999-999999999904', name: 'Nintendo', company: 'Nintendo' }
    ];
  }

  /** Obter Universos */
  async function getUniverses() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('universes').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '88888888-8888-8888-8888-888888888801', name: 'Batman' },
      { id: '88888888-8888-8888-8888-888888888802', name: 'Spider-Man' },
      { id: '88888888-8888-8888-8888-888888888803', name: 'Fast & Furious Universe' }
    ];
  }

  /** Obter Personagens */
  async function getCharacters() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('characters').select('*').order('name');
      if (data && data.length) return data;
    }
    return [
      { id: '77777777-7777-7777-7777-777777777701', name: 'Batman', alias: 'Bruce Wayne' },
      { id: '77777777-7777-7777-7777-777777777702', name: 'Spider-Man', alias: 'Peter Parker' },
      { id: '77777777-7777-7777-7777-777777777703', name: 'Dominic Toretto', alias: 'Dom' }
    ];
  }

  /** Obter Mídias (Filmes/Séries/Games) */
  async function getMedia() {
    const client = window.HW?.supabase?.getClient();
    if (client) {
      const { data } = await client.from('media').select('*').order('title');
      if (data && data.length) return data;
    }
    return [
      { id: '66666666-6666-6666-6666-666666666601', title: 'The Batman', media_type: 'film', release_year: 2022 },
      { id: '66666666-6666-6666-6666-666666666602', title: 'Fast Five', media_type: 'film', release_year: 2011 }
    ];
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

  /**
   * Buscar carrinho por código de barras ou identificador (Barcode, Toy Number, Collector Number, SKU, EAN, UPC)
   */
  async function getCarByIdentifier(code) {
    if (!code) return { data: null, error: { message: 'Código não informado.' } };

    // Normalizar mantendo como STRING, preservando zeros à esquerda, barras (/), hífens (-) e alfanuméricos
    const cleanCode = String(code).trim().replace(/[^\w\d\-\/]/g, '');
    if (!cleanCode) return { data: null, error: { message: 'Código inválido.' } };

    const client = window.HW?.supabase?.getClient();
    if (client) {
      try {
        // 1. Busca insensível a maiúsculas/minúsculas no Supabase (car_identifiers) ignorando suspeitos
        const { data: idRecords, error: idError } = await client.from('car_identifiers')
          .select('car_id, identifier_type, identifier_value')
          .ilike('identifier_value', cleanCode)
          .neq('identifier_type', 'Barcode (Suspect)')
          .limit(1);

        if (!idError && idRecords && idRecords.length > 0 && idRecords[0].car_id) {
          return await getCarById(idRecords[0].car_id);
        }

        // 2. Fallback: tentar sem caracteres especiais caso o usuário tenha digitado sem barra/hífen
        const stripped = cleanCode.replace(/[\-\/]/g, '');
        if (stripped && stripped !== cleanCode) {
          const { data: altRecords } = await client.from('car_identifiers')
            .select('car_id')
            .ilike('identifier_value', stripped)
            .neq('identifier_type', 'Barcode (Suspect)')
            .limit(1);

          if (altRecords && altRecords.length > 0 && altRecords[0].car_id) {
            return await getCarById(altRecords[0].car_id);
          }
        }
      } catch (err) {
        console.warn('[CatalogService.getCarByIdentifier] Erro Supabase:', err);
      }
    }

    // Fallback local robusto (procura apenas em identificadores CONFIRMADOS)
    const qLower = cleanCode.toLowerCase();
    
    let allModels = DEMO_CATALOG;
    try {
      if (typeof require !== 'undefined') {
        const path = require('path');
        const fs = require('fs');
        const dataDir = path.join(process.cwd(), 'data');
        const f24 = path.join(dataDir, 'hot-wheels-mainline-2024-250.json');
        const f25 = path.join(dataDir, 'hot-wheels-mainline-2025.json');
        const f26 = path.join(dataDir, 'hot-wheels-mainline-2026.json');
        const m24 = fs.existsSync(f24) ? JSON.parse(fs.readFileSync(f24, 'utf8')) : [];
        const m25 = fs.existsSync(f25) ? JSON.parse(fs.readFileSync(f25, 'utf8')) : [];
        const m26 = fs.existsSync(f26) ? JSON.parse(fs.readFileSync(f26, 'utf8')) : [];
        allModels = [...DEMO_CATALOG, ...m24, ...m25, ...m26];
      }
    } catch (e) {}

    const found = allModels.find(c =>
      (c.barcode && String(c.barcode).toLowerCase() === qLower) ||
      (c.identifiers && c.identifiers.some(i => i.identifier_type !== 'Barcode (Suspect)' && i.identifier_value && i.identifier_value.toLowerCase() === qLower)) ||
      (c.toy_number && c.toy_number.toLowerCase() === qLower) ||
      (c.collector_number && c.collector_number.toLowerCase() === qLower) ||
      (c.name && c.name.toLowerCase() === qLower)
    );

    if (found) {
      return { data: found, error: null };
    }

    return { data: null, error: { message: 'Código não encontrado no catálogo.' } };
  }

  return {
    getCars: (opt) => filterCars(opt),
    getCarById,
    getCarByIdentifier,
    searchCars: (opt) => filterCars(opt),
    filterCars,
    uploadCarImage,
    getLines,
    getFranchises,
    getUniverses,
    getCharacters,
    getMedia,
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
