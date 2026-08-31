-- ============================================================
-- MIGRATION 013: Franquias, Universos, Personagens, Mídias e Relações N:M
-- Execute no SQL Editor do seu projeto Supabase:
-- https://supabase.com/dashboard/project/wtaldxcpseczlqxsopvo/sql/new
-- ============================================================

-- 1. Franquias (Empresa / Marca detentora dos direitos)
CREATE TABLE IF NOT EXISTS public.franchises (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE,
    company TEXT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. Universos / Temas (Linha/Subuniverso temático)
CREATE TABLE IF NOT EXISTS public.universes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    franchise_id UUID REFERENCES public.franchises(id) ON DELETE CASCADE,
    name TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT universes_franchise_name_unique UNIQUE(franchise_id, name)
);

-- 3. Personagens
CREATE TABLE IF NOT EXISTS public.characters (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    franchise_id UUID REFERENCES public.franchises(id) ON DELETE CASCADE,
    universe_id UUID REFERENCES public.universes(id) ON DELETE SET NULL,
    name TEXT NOT NULL,
    alias TEXT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 4. Mídias (Filmes, Séries TV, Animações, Videogames, Quadrinhos)
CREATE TABLE IF NOT EXISTS public.media (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    franchise_id UUID REFERENCES public.franchises(id) ON DELETE SET NULL,
    universe_id UUID REFERENCES public.universes(id) ON DELETE SET NULL,
    title TEXT NOT NULL,
    media_type TEXT NOT NULL DEFAULT 'film', -- film, tv_series, animation, video_game, comic, other
    release_year INT,
    studio TEXT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 5. Relacionamento Carro x Franquias (N:M)
CREATE TABLE IF NOT EXISTS public.car_franchises (
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    franchise_id UUID NOT NULL REFERENCES public.franchises(id) ON DELETE CASCADE,
    universe_id UUID REFERENCES public.universes(id) ON DELETE SET NULL,
    PRIMARY KEY (car_id, franchise_id)
);

-- 6. Relacionamento Carro x Personagens (N:M)
CREATE TABLE IF NOT EXISTS public.car_characters (
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    character_id UUID NOT NULL REFERENCES public.characters(id) ON DELETE CASCADE,
    PRIMARY KEY (car_id, character_id)
);

-- 7. Relacionamento Carro x Mídias (N:M)
CREATE TABLE IF NOT EXISTS public.car_media (
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    media_id UUID NOT NULL REFERENCES public.media(id) ON DELETE CASCADE,
    vehicle_name TEXT, -- ex: Batmobile, Spider-Mobile, Charger R/T
    PRIMARY KEY (car_id, media_id)
);

-- 8. Relacionamento Carro x Categorias (N:M)
CREATE TABLE IF NOT EXISTS public.car_categories (
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    category_id UUID NOT NULL REFERENCES public.categories(id) ON DELETE CASCADE,
    PRIMARY KEY (car_id, category_id)
);

-- Habilitar RLS em todas as novas tabelas
ALTER TABLE public.franchises ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.universes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.characters ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.media ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_franchises ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_characters ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_media ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_categories ENABLE ROW LEVEL SECURITY;

-- Leitura pública para catálogo
CREATE POLICY "Leitura pública de franquias" ON public.franchises FOR SELECT USING (true);
CREATE POLICY "Leitura pública de universos" ON public.universes FOR SELECT USING (true);
CREATE POLICY "Leitura pública de personagens" ON public.characters FOR SELECT USING (true);
CREATE POLICY "Leitura pública de midias" ON public.media FOR SELECT USING (true);
CREATE POLICY "Leitura pública de car_franchises" ON public.car_franchises FOR SELECT USING (true);
CREATE POLICY "Leitura pública de car_characters" ON public.car_characters FOR SELECT USING (true);
CREATE POLICY "Leitura pública de car_media" ON public.car_media FOR SELECT USING (true);
CREATE POLICY "Leitura pública de car_categories" ON public.car_categories FOR SELECT USING (true);

-- Permissão de gravação para catálogo
CREATE POLICY "Permitir inserção de franquias" ON public.franchises FOR INSERT WITH CHECK (true);
CREATE POLICY "Permitir inserção de universos" ON public.universes FOR INSERT WITH CHECK (true);
CREATE POLICY "Permitir inserção de personagens" ON public.characters FOR INSERT WITH CHECK (true);
CREATE POLICY "Permitir inserção de midias" ON public.media FOR INSERT WITH CHECK (true);
CREATE POLICY "Permitir inserção de car_franchises" ON public.car_franchises FOR INSERT WITH CHECK (true);
CREATE POLICY "Permitir inserção de car_characters" ON public.car_characters FOR INSERT WITH CHECK (true);
CREATE POLICY "Permitir inserção de car_media" ON public.car_media FOR INSERT WITH CHECK (true);
CREATE POLICY "Permitir inserção de car_categories" ON public.car_categories FOR INSERT WITH CHECK (true);

-- Índices de Performance
CREATE INDEX IF NOT EXISTS idx_universes_franchise ON public.universes (franchise_id);
CREATE INDEX IF NOT EXISTS idx_characters_franchise ON public.characters (franchise_id);
CREATE INDEX IF NOT EXISTS idx_media_franchise ON public.media (franchise_id);
CREATE INDEX IF NOT EXISTS idx_car_franchises_lookup ON public.car_franchises (car_id, franchise_id);
CREATE INDEX IF NOT EXISTS idx_car_characters_lookup ON public.car_characters (car_id, character_id);
CREATE INDEX IF NOT EXISTS idx_car_media_lookup ON public.car_media (car_id, media_id);
