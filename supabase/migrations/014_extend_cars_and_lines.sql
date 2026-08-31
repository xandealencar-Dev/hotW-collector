-- ============================================================
-- MIGRATION 014: Extensão da tabela cars, Linhas Comerciais e Seeds de Apoio
-- Execute no SQL Editor do seu projeto Supabase:
-- https://supabase.com/dashboard/project/wtaldxcpseczlqxsopvo/sql/new
-- ============================================================

-- 1. Extensão de colunas na tabela public.cars
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS line_id UUID REFERENCES public.line_types(id) ON DELETE SET NULL;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS short_description TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS collector_notes TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS real_car_model TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS real_car_generation TEXT;
ALTER TABLE public.cars ADD COLUMN IF NOT EXISTS real_car_year INT;

-- 2. Seed de Linhas Comerciais Expandidas (line_types)
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

-- 3. Seed de Apoio: Franquias e Universos de Exemplo
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
