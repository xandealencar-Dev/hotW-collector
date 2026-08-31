-- 010_update_identifiers_and_indexes.sql
-- Hot Wheels Collector — Índices Otimizados para Alta Performance
-- NOTA TÉCNICA: Consulta indexada projetada para baixa latência, devendo a performance real ser medida em ambiente de produção.
-- Tabela 'cars' mantida como estrutura normal (sem particionamento prematuro), preparada para futura otimização se métricas exigirem.

-- 1. Índices B-Tree compostos para consultas e filtros comuns
CREATE INDEX IF NOT EXISTS idx_cars_casting_id ON public.cars (casting_id);
CREATE INDEX IF NOT EXISTS idx_cars_subseries_id ON public.cars (subseries_id);
CREATE INDEX IF NOT EXISTS idx_cars_release_series ON public.cars (release_year, series_id, manufacturer_id);

-- 2. Índice B-Tree composto para a fonte única da verdade de Identificadores (Toy Number, Barcode, SKU, Collector Number)
CREATE INDEX IF NOT EXISTS idx_car_identifiers_lookup ON public.car_identifiers (identifier_type, identifier_value);

-- 3. Índice para a tabela de ligação N:M de Características Especiais
CREATE INDEX IF NOT EXISTS idx_car_features_lookup ON public.car_features (car_id, feature_id);

-- 4. Índices GIN Trigramas para busca textual instantânea e tolerante (pg_trgm)
CREATE INDEX IF NOT EXISTS idx_castings_name_trgm ON public.castings USING gin (name gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_cars_name_trgm ON public.cars USING gin (name gin_trgm_ops);
