-- ============================================================
-- MIGRATION 011: Políticas RLS para Supabase Storage (Bucket 'catalog')
-- Execute no SQL Editor do Supabase para liberar leitura e upload no bucket 'catalog':
-- https://supabase.com/dashboard/project/wtaldxcpseczlqxsopvo/sql/new
-- ============================================================

-- 1. Leitura pública de arquivos no bucket catalog
CREATE POLICY "Public Read Catalog Bucket"
ON storage.objects FOR SELECT
USING (bucket_id = 'catalog');

-- 2. Permissão de Upload (INSERT) no bucket catalog
CREATE POLICY "Allow Insert Catalog Bucket"
ON storage.objects FOR INSERT
WITH CHECK (bucket_id = 'catalog');

-- 3. Permissão de Alteração (UPDATE) no bucket catalog
CREATE POLICY "Allow Update Catalog Bucket"
ON storage.objects FOR UPDATE
USING (bucket_id = 'catalog');

-- 4. Permissão de Remoção (DELETE) no bucket catalog
CREATE POLICY "Allow Delete Catalog Bucket"
ON storage.objects FOR DELETE
USING (bucket_id = 'catalog');
