-- 009_refactor_car_variations_and_colors_wheels.sql
-- Hot Wheels Collector — Refatoração de Variações, Cores e Rodas por Chaves Estrangeiras

-- 1. Expansão da tabela de Cores e Rodas
ALTER TABLE public.colors
    ADD COLUMN IF NOT EXISTS finish_type TEXT DEFAULT 'Gloss'; -- Gloss, Matte, Spectraflame, Pearl, Metallic, Chrome

ALTER TABLE public.wheels
    ADD COLUMN IF NOT EXISTS material TEXT DEFAULT 'Plastic', -- Plastic, Rubber (Real Riders), Metal
    ADD COLUMN IF NOT EXISTS finish TEXT DEFAULT 'Chrome';

-- 2. Conectar Cores e Rodas como FKs em car_variations
ALTER TABLE public.car_variations
    ADD COLUMN IF NOT EXISTS primary_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS secondary_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS interior_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS window_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS base_color_id UUID REFERENCES public.colors(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS wheel_id UUID REFERENCES public.wheels(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS base_material TEXT DEFAULT 'Plastic',
    ADD COLUMN IF NOT EXISTS body_material TEXT DEFAULT 'Metal';
