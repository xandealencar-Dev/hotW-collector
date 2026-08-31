-- 004_rls_policies.sql
-- Hot Wheels Collector — Políticas de Segurança RLS (Row Level Security)

-- Habilitar RLS em TODAS as tabelas
ALTER TABLE public.data_sources ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.manufacturers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.series ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.collections ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.colors ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.wheels ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.cars ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_variations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_images ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.car_identifiers ENABLE ROW LEVEL SECURITY;

ALTER TABLE public.user_cars ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_favorites ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_wishlist ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_car_images ENABLE ROW LEVEL SECURITY;

-- ============================================================
-- POLÍTICAS: CATÁLOGO GLOBAL (Público para leitura, Admin para edição)
-- ============================================================

-- 1. Leitura pública/autenticada para tabelas de catálogo
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

-- 2. Modificação no catálogo restrita a Administradores
-- (Verifica se user_metadata do token JWT contém "is_admin": true)
CREATE OR REPLACE FUNCTION is_admin() RETURNS BOOLEAN AS $$
BEGIN
    RETURN (
        (auth.jwt() -> 'user_metadata' ->> 'is_admin')::boolean = true
        OR
        (auth.jwt() ->> 'role') = 'service_role'
    );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

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

-- ============================================================
-- POLÍTICAS: COLEÇÃO DO USUÁRIO (Apenas o dono acessa seus dados)
-- ============================================================

-- user_cars
CREATE POLICY "Usuário acessa apenas seus próprios carrinhos" ON public.user_cars
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

-- user_favorites
CREATE POLICY "Usuário acessa apenas seus próprios favoritos" ON public.user_favorites
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

-- user_wishlist
CREATE POLICY "Usuário acessa apenas sua própria wishlist" ON public.user_wishlist
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

-- user_car_images
CREATE POLICY "Usuário acessa apenas suas próprias imagens de carrinhos" ON public.user_car_images
    FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
