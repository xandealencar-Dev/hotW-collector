-- ============================================================
-- HOT WHEELS COLLECTOR — MIGRAÇÕES COMBINADAS (013 - 014)
-- Expansão do Banco para Catálogo Profissional de Colecionador
-- Execute este script no SQL Editor do seu projeto Supabase:
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
    media_type TEXT NOT NULL DEFAULT 'film',
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
    vehicle_name TEXT,
    PRIMARY KEY (car_id, media_id)
);

-- 8. Relacionamento Carro x Categorias (N:M)
CREATE TABLE IF NOT EXISTS public.car_categories (
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    category_id UUID NOT NULL REFERENCES public.categories(id) ON DELETE CASCADE,
    PRIMARY KEY (car_id, category_id)
);

-- Extensão de colunas na tabela public.cars
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS line_id UUID REFERENCES public.line_types(id) ON DELETE SET NULL;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS short_description TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS collector_notes TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS real_car_model TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS real_car_generation TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS real_car_year INT;

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

-- Permissões de gravação para catálogo
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

-- Seed de Linhas Comerciais Expandidas (line_types)
INSERT INTO public.line_types (name) VALUES
    ('Mainline'),
    ('Premium'),
    ('RLC'),
    ('Silver Series'),
    ('Character Cars'),
    ('Monster Trucks'),
    ('5-Pack'),
    ('10-Pack'),
    ('Multipack'),
    ('Team Transport'),
    ('Car Culture'),
    ('Boulevard'),
    ('Pop Culture'),
    ('Entertainment'),
    ('Fast & Furious'),
    ('Hot Wheels id')
ON CONFLICT (name) DO NOTHING;

-- Seed de Apoio: Franquias e Universos de Exemplo
INSERT INTO public.franchises (id, name, company, description) VALUES
    ('99999999-9999-9999-9999-999999999901', 'DC Comics', 'Warner Bros', 'Universo de super-heróis da DC Comics'),
    ('99999999-9999-9999-9999-999999999902', 'Marvel', 'The Walt Disney Company', 'Universo de super-heróis da Marvel Comics'),
    ('99999999-9999-9999-9999-999999999903', 'Fast & Furious', 'Universal Pictures', 'Franquia de ação e carros em alta velocidade'),
    ('99999999-9999-9999-9999-999999999904', 'Nintendo', 'Nintendo Co., Ltd.', 'Franquia de videogames e personagens icônicos')
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.universes (id, franchise_id, name, description) VALUES
    ('88888888-8888-8888-8888-888888888801', '99999999-9999-9999-9999-999999999901', 'Batman', 'Mundo do Cavaleiro das Trevas de Gotham City'),
    ('88888888-8888-8888-8888-888888888802', '99999999-9999-9999-9999-999999999902', 'Spider-Man', 'Universo do Homem-Aranha'),
    ('88888888-8888-8888-8888-888888888803', '99999999-9999-9999-9999-999999999903', 'Fast & Furious Universe', 'Filmes da saga Velozes e Furiosos')
ON CONFLICT DO NOTHING;

INSERT INTO public.characters (id, franchise_id, universe_id, name, alias) VALUES
    ('77777777-7777-7777-7777-777777777701', '99999999-9999-9999-9999-999999999901', '88888888-8888-8888-8888-888888888801', 'Batman', 'Bruce Wayne'),
    ('77777777-7777-7777-7777-777777777702', '99999999-9999-9999-9999-999999999902', '88888888-8888-8888-8888-888888888802', 'Spider-Man', 'Peter Parker'),
    ('77777777-7777-7777-7777-777777777703', '99999999-9999-9999-9999-999999999903', '88888888-8888-8888-8888-888888888803', 'Dominic Toretto', 'Dom')
ON CONFLICT DO NOTHING;

INSERT INTO public.media (id, franchise_id, universe_id, title, media_type, release_year, studio) VALUES
    ('66666666-6666-6666-6666-666666666601', '99999999-9999-9999-9999-999999999901', '88888888-8888-8888-8888-888888888801', 'The Batman', 'film', 2022, 'Warner Bros'),
    ('66666666-6666-6666-6666-666666666602', '99999999-9999-9999-9999-999999999903', '88888888-8888-8888-8888-888888888803', 'Fast Five', 'film', 2011, 'Universal Pictures')
ON CONFLICT DO NOTHING;

-- Atualizar metadados dos carros de demonstração existentes
UPDATE public.cars
SET real_car_model = '911 GT3', real_car_generation = '992', real_car_year = 2022, collector_notes = 'Versão de pista homologada com asas aerodinâmicas ativas.'
WHERE id = '55555555-5555-5555-5555-555555555501';

UPDATE public.cars
SET real_car_model = 'Skyline GT-R', real_car_generation = 'BNR34', real_car_year = 1999, collector_notes = 'Lenda JDM com tração integral ATTESA E-TS e motor RB26DETT.'
WHERE id = '55555555-5555-5555-5555-555555555502';

UPDATE public.cars
SET real_car_model = 'Charger Daytona', real_car_generation = '1st Gen', real_car_year = 1969, collector_notes = 'Desenhado para o circuito da NASCAR com estabilizador gigante traseiro.'
WHERE id = '55555555-5555-5555-5555-555555555503';

UPDATE public.cars
SET real_car_model = 'GR Supra', real_car_generation = 'A90', real_car_year = 2023, collector_notes = 'Edição ZAMAC com acabamento em liga de zinco não pintada.'
WHERE id = '55555555-5555-5555-5555-555555555504';
