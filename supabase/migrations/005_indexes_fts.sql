-- 005_indexes_fts.sql
-- Hot Wheels Collector — Índices e Otimização de Busca (Escalabilidade para 100k+ registros)

-- 1. Índices B-Tree para tabelas de catálogo
CREATE INDEX IF NOT EXISTS idx_cars_name ON public.cars (name);
CREATE INDEX IF NOT EXISTS idx_cars_year ON public.cars (year);
CREATE INDEX IF NOT EXISTS idx_cars_manufacturer ON public.cars (manufacturer_id);
CREATE INDEX IF NOT EXISTS idx_cars_series ON public.cars (series_id);
CREATE INDEX IF NOT EXISTS idx_cars_category ON public.cars (category_id);
CREATE INDEX IF NOT EXISTS idx_cars_collection ON public.cars (collection_id);

-- 2. Índices de Trigrama GIN para Pesquisa Textual Aproximada (Case-Insensitive & Partial Match)
CREATE INDEX IF NOT EXISTS idx_cars_name_trgm ON public.cars USING gin (name gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_cars_model_name_trgm ON public.cars USING gin (model_name gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_cars_casting_name_trgm ON public.cars USING gin (casting_name gin_trgm_ops);

-- 3. Índices para identificadores (Busca rápida por código de barra / SKU / Toy Number)
CREATE INDEX IF NOT EXISTS idx_car_identifiers_value ON public.car_identifiers (identifier_value);
CREATE INDEX IF NOT EXISTS idx_car_identifiers_car_id ON public.car_identifiers (car_id);

-- 4. Índices para Coleção de Usuário (Performance de Dashboard e Filtros)
CREATE INDEX IF NOT EXISTS idx_user_cars_user_id ON public.user_cars (user_id);
CREATE INDEX IF NOT EXISTS idx_user_cars_car_id ON public.user_cars (car_id);
CREATE INDEX IF NOT EXISTS idx_user_cars_status ON public.user_cars (user_id, status);
CREATE INDEX IF NOT EXISTS idx_user_favorites_user_car ON public.user_favorites (user_id, car_id);
CREATE INDEX IF NOT EXISTS idx_user_wishlist_user_car ON public.user_wishlist (user_id, car_id);
