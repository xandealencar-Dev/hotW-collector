-- ============================================================
-- MIGRATION 012: Permitir Inserção de Imagens Catalográficas na tabela public.car_images
-- Execute este script no SQL Editor do seu projeto Supabase:
-- https://supabase.com/dashboard/project/wtaldxcpseczlqxsopvo/sql/new
-- ============================================================

CREATE POLICY "Permitir inserção de imagens no catálogo"
ON public.car_images FOR INSERT
WITH CHECK (true);
