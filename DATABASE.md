# Hot Wheels Collector — Modelo de Banco de Dados Refinado (Migrações 001–010)

Este documento descreve a arquitetura refinada da base de dados do **Hot Wheels Collector**, cobrindo o modelo de 19 tabelas, isolamento por RLS, fonte única da verdade para identificadores e a tabela relacional de características de colecionador.

---

## 1. Princípios Arquiteturais Finais

1. **Separação Rígida em 3 Níveis de Catálogo**:
   - `castings`: Molde físico de metal (designer, estreia, formato).
   - `cars`: Lançamento oficial de catálogo/card em determinado ano/linha.
   - `car_variations`: Variações físicas de lote/produção (cores, decais, rodas, chassi).
2. **Fonte Única da Verdade para Identificadores (`car_identifiers`)**:
   - Todos os códigos (SKU, UPC, EAN, Barcode, Toy Number, Collector Number) centralizados em `car_identifiers`.
3. **Escalabilidade por Características Relacionais (`features` + `car_features`)**:
   - Tabela N:M eliminando colunas booleans estáticas. Permite adicionar novas tags (ex: *Super Treasure Hunt*, *ZAMAC*, *RLC*, *Target Red Edition*) sem alterar a estrutura de tabelas.
4. **Sem Particionamento Prematuro**:
   - A tabela `cars` é mantida como tabela normal PostgreSQL de alta performance, totalmente indexada com B-Tree e GIN Trigramas (`pg_trgm`), utilizando paginação por cursor para alta eficiência.
5. **Observação de Desempenho**:
   - Consulta indexada projetada para baixa latência, devendo a performance real ser medida em ambiente de produção.

---

## 2. Dicionário de Tabelas Finais (19 Tabelas)

### Catálogo Global (15 Tabelas)

1. `castings` (id, name UNIQUE, designer, debut_year, description, created_at)
2. `manufacturers` (id, name UNIQUE, country, created_at, updated_at)
3. `categories` (id, name UNIQUE, description, created_at, updated_at)
4. `line_types` (id, name UNIQUE, created_at) — Mainline, Premium, RLC, 5-Pack, Monster Trucks
5. `series` (id, line_type_id FK, name, year, description, created_at, updated_at) — UNIQUE(name, year)
6. `subseries` (id, series_id FK, name, total_cars, created_at) — HW Exotics, HW Muscle Mania
7. `collections` (id, name, year, description, created_at, updated_at)
8. `colors` (id, name UNIQUE, hex, finish_type, created_at, updated_at)
9. `wheels` (id, name UNIQUE, material, finish, description, created_at, updated_at)
10. `packaging_types` (id, name UNIQUE, description, created_at) — Long Card, Short Card, Box Set
11. `features` (id, name UNIQUE, category, created_at) — Treasure Hunt, STH, ZAMAC, RLC
12. `cars` (id, casting_id FK, name, release_year, model_year, manufacturer_id FK, series_id FK, subseries_id FK, collection_id FK, category_id FK, packaging_type_id FK, scale, country_of_manufacture, description, source_id FK, is_demo, created_at, updated_at)
13. `car_features` (car_id FK, feature_id FK) — Primary Key (car_id, feature_id)
14. `car_variations` (id, car_id FK, variation_name, primary_color_id FK, secondary_color_id FK, interior_color_id FK, window_color_id FK, base_color_id FK, wheel_id FK, decal_details, base_material, body_material, notes, source_id FK, created_at, updated_at)
15. `car_identifiers` (id, car_id FK, variation_id FK, identifier_type, identifier_value, source, created_at)

### Coleção Privada do Usuário (4 Tabelas)
16. `user_cars` (id, user_id FK, car_id FK, variation_id FK, status, purchase_price, estimated_value, purchase_date, purchase_location, condition, notes, created_at, updated_at)
17. `user_favorites` (id, user_id FK, car_id FK, created_at) — UNIQUE(user_id, car_id)
18. `user_wishlist` (id, user_id FK, car_id FK, priority, max_price, notes, created_at, updated_at) — UNIQUE(user_id, car_id)
19. `user_car_images` (id, user_car_id FK, user_id FK, storage_path, image_url, created_at)

---

## 3. Políticas RLS (Row Level Security)

- **Catálogo Global**: Leitura pública (`USING (true)`). Inserção e atualização restritas a `is_admin() = true`.
- **Coleção do Usuário**: Leitura e escrita restritas estritamente a `auth.uid() = user_id`.

---

## 4. Otimizações de Desempenho e Busca

- **Índices B-Tree Compostos**:
  - `idx_cars_release_series` on `cars(release_year, series_id, manufacturer_id)`
  - `idx_car_identifiers_lookup` on `car_identifiers(identifier_type, identifier_value)`
  - `idx_car_features_lookup` on `car_features(car_id, feature_id)`
- **Índices GIN Trigramas (`pg_trgm`)**:
  - `idx_castings_name_trgm` on `castings USING gin(name gin_trgm_ops)`
  - `idx_cars_name_trgm` on `cars USING gin(name gin_trgm_ops)`
