/**
 * import.service.js — Hot Wheels Collector
 * Serviço de Importação Estruturada de Arquivos CSV e JSON.
 *
 * Funcionalidades:
 *  - Leitura e Parsing seguro de arquivos CSV / JSON
 *  - Validação de campos obrigatórios (nome, ano, fabricante, etc.)
 *  - Detecção de registros incompletos e possíveis duplicados
 *  - Normalização automática (trim, sanitização)
 *  - Gerador de Prévia (preview) com status por linha
 *  - Inserção em Lote (batch insert / transaction)
 *  - Relatório final de importação com sucesso e erros
 */

'use strict';

const ImportService = (() => {

  /**
   * Processar texto de arquivo CSV
   */
  function parseCSV(csvText) {
    const lines = csvText.split(/\r?\n/).filter(line => line.trim() !== '');
    if (lines.length < 2) {
      throw new Error('Arquivo CSV inválido ou vazio. Deve conter pelo menos o cabeçalho e 1 linha.');
    }

    const headers = lines[0].split(',').map(h => h.trim().toLowerCase());
    const rows = [];

    for (let i = 1; i < lines.length; i++) {
      // Regex simples para capturar valores com ou sem aspas
      const values = lines[i].split(',').map(v => v.trim().replace(/^["']|["']$/g, ''));
      const obj = {};
      headers.forEach((header, index) => {
        obj[header] = values[index] !== undefined ? values[index] : '';
      });
      rows.push(obj);
    }

    return rows;
  }

  /**
   * Processar texto de arquivo JSON
   */
  function parseJSON(jsonText) {
    const parsed = JSON.parse(jsonText);
    if (!Array.isArray(parsed)) {
      throw new Error('O arquivo JSON deve conter um Array de objetos representando os carrinhos.');
    }
    return parsed;
  }

  /**
   * Analisar e Validar os Registros para prévia de Importação
   */
  async function validateAndPreview(rawRows) {
    const valid = [];
    const incomplete = [];
    const duplicates = [];
    const errors = [];

    // Obter acervo atual para checagem de duplicados
    const { data: existingCars } = await window.HW.services.collection.getUserCars({ pageSize: 10000 });
    const currentCars = existingCars || [];

    rawRows.forEach((row, index) => {
      const lineNum = index + 2; // considerando o cabeçalho
      const name = (row.name || row.nome || row.model || '').trim();
      const year = parseInt(row.year || row.ano) || null;
      const manufacturer = (row.manufacturer || row.fabricante || 'Hot Wheels').trim();
      const series = (row.series || row.serie || 'Mainline').trim();
      const color = (row.color || row.cor || '').trim();
      const status = (row.status || 'own').trim();
      const pricePaid = parseFloat(row.price_paid || row.pricepaid || row.preco_pago) || null;

      // 1. Validação básica de campos obrigatórios
      if (!name) {
        incomplete.push({ lineNum, row, reason: 'Nome do carrinho é obrigatório.' });
        return;
      }

      const item = {
        name,
        year,
        manufacturer,
        series,
        color,
        status,
        price_paid: pricePaid,
        notes: (row.notes || row.observacoes || '').trim()
      };

      // 2. Detecção de duplicados
      const isDup = currentCars.some(c =>
        c.name.toLowerCase() === name.toLowerCase() &&
        (year ? c.year === year : true)
      );

      if (isDup) {
        duplicates.push({ lineNum, item, reason: 'Carrinho já existente na coleção.' });
      } else {
        valid.push({ lineNum, item });
      }
    });

    return {
      total: rawRows.length,
      valid,
      incomplete,
      duplicates,
      errors
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
          year: item.year,
          manufacturer: item.manufacturer,
          series: item.series,
          color: item.color,
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

// Expor globalmente no namespace HW.services
window.HW = Object.assign(window.HW || {}, {
  services: Object.assign((window.HW && window.HW.services) || {}, {
    import: ImportService
  })
});
