-- 007_create_castings_and_packaging.sql
-- Hot Wheels Collector — Criação de Castings, Packaging Types, Subseries e Features

-- 1. Tabela de Castings (Molde de Metal Base)
CREATE TABLE IF NOT EXISTS public.castings (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    designer TEXT,
    debut_year INT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. Tabela de Tipos de Linha (Mainline, Premium, RLC, etc.)
CREATE TABLE IF NOT EXISTS public.line_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 3. Tabela de SubSéries / Subsets (HW Exotics, HW Muscle Mania)
CREATE TABLE IF NOT EXISTS public.subseries (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    series_id UUID REFERENCES public.series(id) ON DELETE CASCADE,
    name TEXT NOT NULL,
    total_cars INT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 4. Tabela de Tipos de Embalagem (Packaging Types)
CREATE TABLE IF NOT EXISTS public.packaging_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 5. Tabela de Características Especializadas (Features/Tags)
CREATE TABLE IF NOT EXISTS public.features (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    category TEXT DEFAULT 'Edition', -- Rarity, Store Exclusive, Membership, Edition
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 6. Tabela de Ligação N:M (car_features)
CREATE TABLE IF NOT EXISTS public.car_features (
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    feature_id UUID NOT NULL REFERENCES public.features(id) ON DELETE CASCADE,
    PRIMARY KEY (car_id, feature_id)
);

-- Registros Padrão Iniciais (Seeds de Apoio)
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

-- Habilitar RLS nas novas tabelas
ALTER TABLE public.castings ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.line_types ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.subseries ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.packaging_types ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.features ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_features ENABLE ROW LEVEL SECURITY;

-- Políticas RLS: Leitura pública e Edição para Admin
CREATE POLICY "Leitura pública de castings" ON public.castings FOR SELECT USING (true);
CREATE POLICY "Leitura pública de line_types" ON public.line_types FOR SELECT USING (true);
CREATE POLICY "Leitura pública de subseries" ON public.subseries FOR SELECT USING (true);
CREATE POLICY "Leitura pública de packaging_types" ON public.packaging_types FOR SELECT USING (true);
CREATE POLICY "Leitura pública de features" ON public.features FOR SELECT USING (true);
CREATE POLICY "Leitura pública de car_features" ON public.car_features FOR SELECT USING (true);

CREATE POLICY "Admin gerencia castings" ON public.castings FOR ALL USING (is_admin());
CREATE POLICY "Admin gerencia line_types" ON public.line_types FOR ALL USING (is_admin());
CREATE POLICY "Admin gerencia subseries" ON public.subseries FOR ALL USING (is_admin());
CREATE POLICY "Admin gerencia packaging_types" ON public.packaging_types FOR ALL USING (is_admin());
CREATE POLICY "Admin gerencia features" ON public.features FOR ALL USING (is_admin());
CREATE POLICY "Admin gerencia car_features" ON public.car_features FOR ALL USING (is_admin());
