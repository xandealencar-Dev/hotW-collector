/**
 * import.service.js — Hot Wheels Collector
 * Serviço de Importação Estruturada para Catálogo Global e Coleção do Usuário (Migração 007-014).
 *
 * Suporta a ingestão em cascata (Cascading Resolution):
 *  - Casting -> Car -> Line -> Franchise -> Universe -> Character -> Media -> Identifiers -> Features -> User Collection
 *  - Suporta leitura CSV e JSON com esquema completo de colecionador.
 */

'use strict';

const ImportService = (() => {

  /**
   * Processar arquivo CSV
   */
  function parseCSV(csvText) {
    const lines = csvText.split(/\r?\n/).filter(l => l.trim() !== '');
    if (lines.length < 2) {
      throw new Error('Arquivo CSV inválido ou vazio. Deve conter cabeçalho e ao menos 1 registro.');
    }

    const headers = lines[0].split(',').map(h => h.trim().toLowerCase());
    const rows = [];

    for (let i = 1; i < lines.length; i++) {
      const values = lines[i].split(',').map(v => v.trim().replace(/^["']|["']$/g, ''));
      const obj = {};
      headers.forEach((h, idx) => {
        obj[h] = values[idx] !== undefined ? values[idx] : '';
      });
      rows.push(obj);
    }
    return rows;
  }

  /**
   * Processar arquivo JSON
   */
  function parseJSON(jsonText) {
    const parsed = JSON.parse(jsonText);
    if (!Array.isArray(parsed)) {
      throw new Error('O arquivo JSON deve conter um Array de objetos representando as miniaturas.');
    }
    return parsed;
  }

  /**
   * Validação e Geração de Prévia da Importação
   */
  async function validateAndPreview(rawRows) {
    const valid = [];
    const incomplete = [];
    const duplicates = [];

    const { data: existingCars } = await window.HW.services.collection.getUserCars({ pageSize: 10000 });
    const currentCars = existingCars || [];

    rawRows.forEach((row, index) => {
      const lineNum = index + 2;

      // Campos do Catálogo e Coleção
      const name = (row.name || row.nome || row.model || '').trim();
      const castingName = (row.casting_name || row.casting || name).trim();
      const releaseYear = parseInt(row.release_year || row.year || row.ano) || new Date().getFullYear();
      const modelYear = parseInt(row.model_year) || null;
      const manufacturer = (row.manufacturer || row.fabricante || 'Hot Wheels').trim();
      const series = (row.series || row.serie || 'Mainline').trim();
      const line = (row.line || row.linha || 'Mainline').trim();
      const category = (row.category || row.categoria || 'Sports Car').trim();
      const toyNumber = (row.toy_number || row.toy_num || '').trim();
      const barcode = (row.barcode || row.codigo_barras || '').trim();
      const collectorNumber = (row.collector_number || '').trim();
      const primaryColor = (row.primary_color || row.color || row.cor || '').trim();
      const packagingType = (row.packaging_type || row.embalagem || 'Long Card').trim();
      const status = (row.status || 'own').trim();
      const pricePaid = parseFloat(row.price_paid || row.pricepaid || row.preco_pago) || null;
      const notes = (row.notes || row.observacoes || '').trim();

      // Campos de Colecionador Avançados
      const realCarModel = (row.real_car_model || row.modelo_real || '').trim();
      const realCarGeneration = (row.real_car_generation || row.geracao_real || '').trim();
      const realCarYear = parseInt(row.real_car_year || row.ano_veiculo_real) || null;
      const franchise = (row.franchise || row.franquia || '').trim();
      const universe = (row.universe || row.universo || '').trim();
      const character = (row.character || row.personagem || '').trim();
      const media = (row.media || row.filme || row.tv_series || '').trim();
      const shortDescription = (row.short_description || row.resumo || '').trim();
      const collectorNotes = (row.collector_notes || row.notas_colecionador || '').trim();

      // Suporte a Imagens opcionais no CSV / JSON
      let imageUrl = (row.image_url || row.image_path || row.imagem || '').trim();
      let images = [];
      if (Array.isArray(row.images)) {
        images = row.images;
        if (!imageUrl && images.length) {
          imageUrl = images.find(i => i.is_primary)?.url || images[0].url || '';
        }
      } else if (imageUrl) {
        images = [{ url: imageUrl, type: 'front', is_primary: true }];
      }

      // Flags booleanas
      const isSTH = row.is_sth === 'true' || row.is_super_treasure_hunt === 'true' || row.is_sth === true;
      const isTH = row.is_th === 'true' || row.is_treasure_hunt === 'true' || row.is_th === true;
      const isZamac = row.is_zamac === 'true' || row.is_zamac === true;
      const isPremium = row.is_premium === 'true' || row.is_premium === true;

      // Validação obrigatória
      if (!name) {
        incomplete.push({ lineNum, row, reason: 'O nome da miniatura é obrigatório.' });
        return;
      }

      const item = {
        casting_name: castingName,
        name,
        release_year: releaseYear,
        model_year: modelYear,
        manufacturer,
        series,
        line,
        category,
        toy_number: toyNumber,
        barcode,
        collector_number: collectorNumber,
        primary_color: primaryColor,
        packaging_type: packagingType,
        image_url: imageUrl,
        images,
        real_car_model: realCarModel,
        real_car_generation: realCarGeneration,
        real_car_year: realCarYear,
        franchise,
        universe,
        character,
        media,
        short_description: shortDescription,
        collector_notes: collectorNotes,
        is_sth: isSTH,
        is_th: isTH,
        is_zamac: isZamac,
        is_premium: isPremium,
        status,
        price_paid: pricePaid,
        notes
      };

      // Checagem de similaridade / duplicados
      const isDup = currentCars.some(c =>
        c.name.toLowerCase() === name.toLowerCase() &&
        (releaseYear ? (c.year || c.release_year) === releaseYear : true)
      );

      if (isDup) {
        duplicates.push({ lineNum, item, reason: 'Possível registro duplicado detectado.' });
      } else {
        valid.push({ lineNum, item });
      }
    });

    return {
      total: rawRows.length,
      valid,
      incomplete,
      duplicates
    };
  }

  /**
   * Executar Inserção em Lote (Batch Import)
   */
  async function executeBatchImport(itemsToImport) {
    let successCount = 0;
    const errors = [];

    for (const item of itemsToImport) {
      try {
        const result = await window.HW.services.collection.addUserCar({
          name: item.name,
          year: item.release_year,
          manufacturer: item.manufacturer,
          series: item.series,
          color: item.primary_color,
          image_url: item.image_url,
          status: item.status,
          pricePaid: item.price_paid,
          notes: item.notes
        });

        if (result.error) {
          errors.push({ item, error: result.error });
        } else {
          successCount++;
        }
      } catch (err) {
        errors.push({ item, error: err.message });
      }
    }

    return {
      importedCount: successCount,
      failedCount: errors.length,
      errors
    };
  }

  return {
    parseCSV,
    parseJSON,
    validateAndPreview,
    executeBatchImport
  };
})();

window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    import: ImportService
  })
});
