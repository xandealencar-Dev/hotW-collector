-- 008_refactor_cars_table.sql
-- Hot Wheels Collector — Refatoração da Tabela Cars (FKs para Castings, Subseries, Packaging e Anos)

-- 1. Adicionar novas colunas relacionais e metadados
ALTER TABLE public.cars
    ADD COLUMN IF NOT EXISTS casting_id UUID REFERENCES public.castings(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS subseries_id UUID REFERENCES public.subseries(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS packaging_type_id UUID REFERENCES public.packaging_types(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS release_year INT,
    ADD COLUMN IF NOT EXISTS model_year INT,
    ADD COLUMN IF NOT EXISTS country_of_manufacture TEXT DEFAULT 'Malásia';

-- 2. Migrar dados existentes de year -> release_year
UPDATE public.cars SET release_year = year WHERE release_year IS NULL AND year IS NOT NULL;

-- 3. Migrar dados existentes de casting_name -> tabela castings automaticamente
DO $$
DECLARE
    car_rec RECORD;
    c_id UUID;
BEGIN
    FOR car_rec IN SELECT id, casting_name FROM public.cars WHERE casting_name IS NOT NULL AND casting_id IS NULL LOOP
        -- Inserir casting se não existir
        INSERT INTO public.castings (name)
        VALUES (car_rec.casting_name)
        ON CONFLICT (name) DO NOTHING;
        
        -- Buscar ID do casting
        SELECT id INTO c_id FROM public.castings WHERE name = car_rec.casting_name;
        
        -- Atualizar FK em cars
        UPDATE public.cars SET casting_id = c_id WHERE id = car_rec.id;
    END LOOP;
END $$;
