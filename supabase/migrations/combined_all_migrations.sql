-- ============================================================
-- HOT WHEELS COLLECTOR — SCRIPT DE MIGRAÇÃO COMBINADO (001 - 010)
-- Execute este script no SQL Editor do seu projeto Supabase:
-- https://supabase.com/dashboard/project/wtaldxcpseczlqxsopvo/sql/new
-- ============================================================

-- ------------------------------------------------------------
-- MIGRATION 001: Extensões e Funções Utilitárias
-- ------------------------------------------------------------
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ------------------------------------------------------------
-- MIGRATION 002: Tabelas do Catálogo Global
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.data_sources (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    url TEXT,
    license TEXT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.manufacturers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    country TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.categories (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.series (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    year INT,
    description TEXT,
    type TEXT DEFAULT 'Mainline',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT series_name_year_unique UNIQUE(name, year)
);

CREATE TABLE IF NOT EXISTS public.collections (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    year INT,
    description TEXT,
    type TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.colors (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    hex VARCHAR(7),
    finish_type TEXT DEFAULT 'Gloss',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.wheels (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    material TEXT DEFAULT 'Plastic',
    finish TEXT DEFAULT 'Chrome',
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.castings (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    designer TEXT,
    debut_year INT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.line_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.subseries (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    series_id UUID REFERENCES public.series(id) ON DELETE CASCADE,
    name TEXT NOT NULL,
    total_cars INT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.packaging_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.features (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    category TEXT DEFAULT 'Edition',
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.cars (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    casting_id UUID REFERENCES public.castings(id) ON DELETE SET NULL,
    name TEXT NOT NULL,
    model_name TEXT,
    casting_name TEXT,
    release_year INT NOT NULL,
    model_year INT,
    year INT,
    manufacturer_id UUID REFERENCES public.manufacturers(id) ON DELETE SET NULL,
    series_id UUID REFERENCES public.series(id) ON DELETE SET NULL,
    subseries_id UUID REFERENCES public.subseries(id) ON DELETE SET NULL,
    collection_id UUID REFERENCES public.collections(id) ON DELETE SET NULL,
    category_id UUID REFERENCES public.categories(id) ON DELETE SET NULL,
    packaging_type_id UUID REFERENCES public.packaging_types(id) ON DELETE SET NULL,
    scale VARCHAR(10) DEFAULT '1:64',
    color TEXT,
    base_color TEXT,
    country TEXT,
    country_of_manufacture TEXT DEFAULT 'Malásia',
    description TEXT,
    production_status TEXT DEFAULT 'Active',
    source_id UUID REFERENCES public.data_sources(id) ON DELETE SET NULL,
    is_demo BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.car_features (
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    feature_id UUID NOT NULL REFERENCES public.features(id) ON DELETE CASCADE,
    PRIMARY KEY (car_id, feature_id)
);

CREATE TABLE IF NOT EXISTS public.car_variations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    variation_name TEXT NOT NULL,
    year INT,
    color TEXT,
    decal TEXT,
    wheel_type TEXT,
    base_type TEXT,
    interior_color TEXT,
    window_color TEXT,
    country_of_origin TEXT,
    notes TEXT,
    primary_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    secondary_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    interior_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    window_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    base_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    wheel_id UUID REFERENCES public.wheels(id) ON DELETE SET NULL,
    base_material TEXT DEFAULT 'Plastic',
    body_material TEXT DEFAULT 'Metal',
    source_id UUID REFERENCES public.data_sources(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.car_images (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    variation_id UUID REFERENCES public.car_variations(id) ON DELETE CASCADE,
    storage_path TEXT NOT NULL,
    image_url TEXT NOT NULL,
    image_type TEXT NOT NULL DEFAULT 'front',
    is_primary BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.car_identifiers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    variation_id UUID REFERENCES public.car_variations(id) ON DELETE CASCADE,
    identifier_type TEXT NOT NULL,
    identifier_value TEXT NOT NULL,
    source TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ------------------------------------------------------------
-- MIGRATION 003: Tabelas da Coleção do Usuário
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.user_cars (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    variation_id UUID REFERENCES public.car_variations(id) ON DELETE SET NULL,
    status TEXT NOT NULL DEFAULT 'owned',
    purchase_price NUMERIC(10,2),
    estimated_value NUMERIC(10,2),
    purchase_date DATE,
    purchase_location TEXT,
    condition TEXT DEFAULT 'sealed',
    notes TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS public.user_favorites (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT user_favorites_user_car_unique UNIQUE (user_id, car_id)
);

CREATE TABLE IF NOT EXISTS public.user_wishlist (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    priority TEXT NOT NULL DEFAULT 'medium',
    max_price NUMERIC(10,2),
    notes TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT user_wishlist_user_car_unique UNIQUE (user_id, car_id)
);

CREATE TABLE IF NOT EXISTS public.user_car_images (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_car_id UUID NOT NULL REFERENCES public.user_cars(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    storage_path TEXT NOT NULL,
    image_url TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Triggers de updated_at
CREATE TRIGGER update_manufacturers_updated_at BEFORE UPDATE ON public.manufacturers FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_categories_updated_at BEFORE UPDATE ON public.categories FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_series_updated_at BEFORE UPDATE ON public.series FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_collections_updated_at BEFORE UPDATE ON public.collections FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_colors_updated_at BEFORE UPDATE ON public.colors FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_wheels_updated_at BEFORE UPDATE ON public.wheels FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_cars_updated_at BEFORE UPDATE ON public.cars FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_car_variations_updated_at BEFORE UPDATE ON public.car_variations FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_user_cars_updated_at BEFORE UPDATE ON public.user_cars FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_user_wishlist_updated_at BEFORE UPDATE ON public.user_wishlist FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ------------------------------------------------------------
-- MIGRATION 004: Políticas de Segurança RLS (Row Level Security)
-- ------------------------------------------------------------
ALTER TABLE public.data_sources ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.manufacturers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.series ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.collections ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.colors ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.wheels ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.castings ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.line_types ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.subseries ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.packaging_types ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.features ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.cars ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_features ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_variations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_images ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_identifiers ENABLE ROW LEVEL SECURITY;

ALTER TABLE public.user_cars ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_favorites ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_wishlist ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_car_images ENABLE ROW LEVEL SECURITY;

CREATE OR REPLACE FUNCTION is_admin() RETURNS BOOLEAN AS $$
BEGIN
    RETURN (
        (auth.jwt() -> 'user_metadata' ->> 'is_admin')::boolean = true
        OR
        (auth.jwt() ->> 'role') = 'service_role'
    );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Leitura pública do catálogo
CREATE POLICY "Leitura pública do catálogo de carros" ON public.cars FOR SELECT USING (true);
CREATE POLICY "Leitura pública de variações" ON public.car_variations FOR SELECT USING (true);
CREATE POLICY "Leitura pública de imagens de catálogo" ON public.car_images FOR SELECT USING (true);
CREATE POLICY "Leitura pública de identificadores" ON public.car_identifiers FOR SELECT USING (true);
CREATE POLICY "Leitura pública de fabricantes" ON public.manufacturers FOR SELECT USING (true);
CREATE POLICY "Leitura pública de categorias" ON public.categories FOR SELECT USING (true);
CREATE POLICY "Leitura pública de séries" ON public.series FOR SELECT USING (true);
CREATE POLICY "Leitura pública de coleções" ON public.collections FOR SELECT USING (true);
CREATE POLICY "Leitura pública de cores" ON public.colors FOR SELECT USING (true);
CREATE POLICY "Leitura pública de rodas" ON public.wheels FOR SELECT USING (true);
CREATE POLICY "Leitura pública de fontes de dados" ON public.data_sources FOR SELECT USING (true);
CREATE POLICY "Leitura pública de castings" ON public.castings FOR SELECT USING (true);
CREATE POLICY "Leitura pública de line_types" ON public.line_types FOR SELECT USING (true);
CREATE POLICY "Leitura pública de subseries" ON public.subseries FOR SELECT USING (true);
CREATE POLICY "Leitura pública de packaging_types" ON public.packaging_types FOR SELECT USING (true);
CREATE POLICY "Leitura pública de features" ON public.features FOR SELECT USING (true);
CREATE POLICY "Leitura pública de car_features" ON public.car_features FOR SELECT USING (true);

-- Edição exclusiva para Admin
CREATE POLICY "Admin pode inserir carros" ON public.cars FOR INSERT WITH CHECK (is_admin());
CREATE POLICY "Admin pode atualizar carros" ON public.cars FOR UPDATE USING (is_admin());
CREATE POLICY "Admin pode deletar carros" ON public.cars FOR DELETE USING (is_admin());
CREATE POLICY "Admin pode gerenciar variações" ON public.car_variations FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar imagens de catálogo" ON public.car_images FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar identificadores" ON public.car_identifiers FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar fabricantes" ON public.manufacturers FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar categorias" ON public.categories FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar séries" ON public.series FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar coleções" ON public.collections FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar cores" ON public.colors FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar rodas" ON public.wheels FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar fontes de dados" ON public.data_sources FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar castings" ON public.castings FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar line_types" ON public.line_types FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar subseries" ON public.subseries FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar packaging_types" ON public.packaging_types FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar features" ON public.features FOR ALL USING (is_admin());
CREATE POLICY "Admin pode gerenciar car_features" ON public.car_features FOR ALL USING (is_admin());

-- Coleção Privada do Usuário
CREATE POLICY "Usuário acessa apenas seus próprios carrinhos" ON public.user_cars
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Usuário acessa apenas seus próprios favoritos" ON public.user_favorites
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Usuário acessa apenas sua própria wishlist" ON public.user_wishlist
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Usuário acessa apenas suas próprias imagens de carrinhos" ON public.user_car_images
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

-- ------------------------------------------------------------
-- MIGRATION 005 & 010: Índices e Otimizações de Busca
-- ------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_cars_name ON public.cars (name);
CREATE INDEX IF NOT EXISTS idx_cars_year ON public.cars (release_year);
CREATE INDEX IF NOT EXISTS idx_cars_manufacturer ON public.cars (manufacturer_id);
CREATE INDEX IF NOT EXISTS idx_cars_series ON public.cars (series_id);
CREATE INDEX IF NOT EXISTS idx_cars_category ON public.cars (category_id);
CREATE INDEX IF NOT EXISTS idx_cars_collection ON public.cars (collection_id);
CREATE INDEX IF NOT EXISTS idx_cars_casting_id ON public.cars (casting_id);
CREATE INDEX IF NOT EXISTS idx_cars_subseries_id ON public.cars (subseries_id);
CREATE INDEX IF NOT EXISTS idx_cars_release_series ON public.cars (release_year, series_id, manufacturer_id);

CREATE INDEX IF NOT EXISTS idx_cars_name_trgm ON public.cars USING gin (name gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_castings_name_trgm ON public.castings USING gin (name gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_car_identifiers_lookup ON public.car_identifiers (identifier_type, identifier_value);
CREATE INDEX IF NOT EXISTS idx_car_features_lookup ON public.car_features (car_id, feature_id);

CREATE INDEX IF NOT EXISTS idx_user_cars_user_id ON public.user_cars (user_id);
CREATE INDEX IF NOT EXISTS idx_user_cars_car_id ON public.user_cars (car_id);
CREATE INDEX IF NOT EXISTS idx_user_cars_status ON public.user_cars (user_id, status);
CREATE INDEX IF NOT EXISTS idx_user_favorites_user_car ON public.user_favorites (user_id, car_id);
CREATE INDEX IF NOT EXISTS idx_user_wishlist_user_car ON public.user_wishlist (user_id, car_id);

-- ------------------------------------------------------------
-- MIGRATION 006 & 007: Seeds Padrão de Apoio
-- ------------------------------------------------------------
INSERT INTO public.line_types (name) VALUES
    ('Mainline'), ('Premium'), ('RLC'), ('5-Pack'), ('Monster Trucks')
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.packaging_types (name, description) VALUES
    ('Long Card', 'Cartela longa padrão americana/global'),
    ('Short Card', 'Cartela curta padrão europeu/internacional'),
    ('Box Set', 'Caixa especial de coleção'),
    ('Loose Only', 'Sem embalagem (apenas miniatura solta)'),
    ('Multipack', 'Embalagem de conjunto com múltiplas peças')
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.features (name, category) VALUES
    ('Treasure Hunt', 'Rarity'),
    ('Super Treasure Hunt', 'Rarity'),
    ('Chase', 'Rarity'),
    ('ZAMAC', 'Store Exclusive'),
    ('Target Red Edition', 'Store Exclusive'),
    ('Kroger Exclusive', 'Store Exclusive'),
    ('RLC Exclusive', 'Membership'),
    ('Convention', 'Edition'),
    ('Mail-In', 'Edition')
ON CONFLICT (name) DO NOTHING;

-- Fabricantes de Demonstração
INSERT INTO public.manufacturers (id, name, country) VALUES
    ('11111111-1111-1111-1111-111111111101', 'Porsche', 'Alemanha'),
    ('11111111-1111-1111-1111-111111111102', 'Nissan', 'Japão'),
    ('11111111-1111-1111-1111-111111111103', 'Toyota', 'Japão'),
    ('11111111-1111-1111-1111-111111111104', 'Dodge', 'Estados Unidos'),
    ('11111111-1111-1111-1111-111111111105', 'Ford', 'Estados Unidos')
ON CONFLICT (name) DO NOTHING;

-- Categorias de Demonstração
INSERT INTO public.categories (id, name, description) VALUES
    ('22222222-2222-2222-2222-222222222201', 'Sports Car', 'Esportivos modernos e clássicos de alta performance'),
    ('22222222-2222-2222-2222-222222222202', 'JDM', 'Carros esportivos do mercado doméstico japonês'),
    ('22222222-2222-2222-2222-222222222203', 'Muscle', 'Carros clássicos e modernos americanos de alta cilindrada'),
    ('22222222-2222-2222-2222-222222222204', 'Racing', 'Veículos de competição e pista'),
    ('22222222-2222-2222-2222-222222222205', 'Fantasy', 'Modelos conceituais e fantásticos')
ON CONFLICT (name) DO NOTHING;

-- Séries de Demonstração
INSERT INTO public.series (id, name, year, type, description) VALUES
    ('33333333-3333-3333-3333-333333333301', 'Mainline 2024', 2024, 'Mainline', 'Série principal básica de lançamentos do ano'),
    ('33333333-3333-3333-3333-333333333302', 'Car Culture', 2024, 'Premium', 'Série premium para colecionadores exigentes'),
    ('33333333-3333-3333-3333-333333333303', 'Boulevard', 2023, 'Premium', 'Série exclusiva com pneu de borracha e corpo em metal')
ON CONFLICT DO NOTHING;

-- Castings de Demonstração
INSERT INTO public.castings (id, name, designer, debut_year) VALUES
    ('c1111111-1111-1111-1111-111111111101', 'Porsche 911 GT3', 'Ryu Asada', 2006),
    ('c1111111-1111-1111-1111-111111111102', 'Nissan Skyline GT-R R34', 'Ryu Asada', 2002),
    ('c1111111-1111-1111-1111-111111111103', 'Dodge Charger Daytona', 'Ira Gilford', 1969),
    ('c1111111-1111-1111-1111-111111111104', 'Toyota GR Supra', 'Mark Jones', 2021)
ON CONFLICT (name) DO NOTHING;

-- Cores Primárias
INSERT INTO public.colors (id, name, hex) VALUES
    ('44444444-4444-4444-4444-444444444401', 'Vermelho', '#E8302A'),
    ('44444444-4444-4444-4444-444444444402', 'Azul Metálico', '#3D8EF0'),
    ('44444444-4444-4444-4444-444444444403', 'Branco Pérola', '#FFFFFF'),
    ('44444444-4444-4444-4444-444444444404', 'Preto Fosco', '#111827'),
    ('44444444-4444-4444-4444-444444444405', 'Amarelo Ouro', '#F5C518')
ON CONFLICT (name) DO NOTHING;

-- Carrinhos de Demonstração do Catálogo Global (is_demo = true)
INSERT INTO public.cars (id, casting_id, name, model_name, casting_name, release_year, year, manufacturer_id, series_id, category_id, scale, color, description, is_demo) VALUES
    (
        '55555555-5555-5555-5555-555555555501',
        'c1111111-1111-1111-1111-111111111101',
        'Porsche 911 GT3',
        '911 GT3',
        'Porsche 911 GT3',
        2024,
        2024,
        '11111111-1111-1111-1111-111111111101',
        '33333333-3333-3333-3333-333333333301',
        '22222222-2222-2222-2222-222222222201',
        '1:64',
        'Azul Metálico',
        'Edição especial de demonstração do esporte alemão de alta precisão.',
        true
    ),
    (
        '55555555-5555-5555-5555-555555555502',
        'c1111111-1111-1111-1111-111111111102',
        'Nissan Skyline GT-R (R34)',
        'Skyline GT-R R34',
        'Nissan Skyline R34',
        2023,
        2023,
        '11111111-1111-1111-1111-111111111102',
        '33333333-3333-3333-3333-333333333302',
        '22222222-2222-2222-2222-222222222202',
        '1:64',
        'Branco Pérola',
        'Ícone da cultura JDM com rodas Real Riders de borracha.',
        true
    ),
    (
        '55555555-5555-5555-5555-555555555503',
        'c1111111-1111-1111-1111-111111111103',
        'Dodge Charger Daytona',
        'Charger Daytona',
        'Dodge Daytona 1969',
        2024,
        2024,
        '11111111-1111-1111-1111-111111111104',
        '33333333-3333-3333-3333-333333333301',
        '22222222-2222-2222-2222-222222222203',
        '1:64',
        'Vermelho',
        'Lenda do stock car americano com asa traseira elevada.',
        true
    ),
    (
        '55555555-5555-5555-5555-555555555504',
        'c1111111-1111-1111-1111-111111111104',
        'Toyota GR Supra',
        'GR Supra 2023',
        'Toyota Supra A90',
        2023,
        2023,
        '11111111-1111-1111-1111-111111111103',
        '33333333-3333-3333-3333-333333333303',
        '22222222-2222-2222-2222-222222222202',
        '1:64',
        'Amarelo Ouro',
        'Novo esportivo japonês em versão Boulevard.',
        true
    )
ON CONFLICT DO NOTHING;

-- Identificadores de Exemplo
INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source) VALUES
    ('55555555-5555-5555-5555-555555555501', 'SKU', 'HKG42-D7C1', 'Demo Catalog'),
    ('55555555-5555-5555-5555-555555555501', 'Barcode', '0887961987654', 'Demo Barcode'),
    ('55555555-5555-5555-5555-555555555501', 'Collector Number', '015/250', 'Demo Catalog'),
    ('55555555-5555-5555-5555-555555555502', 'SKU', 'FLC33-D7C2', 'Demo Catalog'),
    ('55555555-5555-5555-5555-555555555502', 'Barcode', '0887961987661', 'Demo Barcode'),
    ('55555555-5555-5555-5555-555555555502', 'Collector Number', '01/05', 'Demo Catalog')
ON CONFLICT DO NOTHING;
