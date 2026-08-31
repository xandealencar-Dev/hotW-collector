-- 003_user_collection.sql
-- Hot Wheels Collector — Tabelas da Coleção do Usuário

-- Enum/Status de Carrinho do Usuário
-- status: 'owned', 'wanted', 'looking', 'trade', 'sold', 'duplicate'

-- 1. Coleção Pessoal do Usuário (user_cars)
CREATE TABLE IF NOT EXISTS public.user_cars (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    variation_id UUID REFERENCES public.car_variations(id) ON DELETE SET NULL,
    status TEXT NOT NULL DEFAULT 'owned', -- owned, wanted, looking, trade, sold, duplicate
    purchase_price NUMERIC(10,2),
    estimated_value NUMERIC(10,2),
    purchase_date DATE,
    purchase_location TEXT,
    condition TEXT DEFAULT 'sealed', -- sealed, loose, mint, carded, damaged
    notes TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. Favoritos do Usuário (user_favorites)
CREATE TABLE IF NOT EXISTS public.user_favorites (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT user_favorites_user_car_unique UNIQUE (user_id, car_id)
);

-- 3. Lista de Desejos / Wishlist (user_wishlist)
CREATE TABLE IF NOT EXISTS public.user_wishlist (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    car_id UUID NOT NULL REFERENCES public.cars(id) ON DELETE CASCADE,
    priority TEXT NOT NULL DEFAULT 'medium', -- low, medium, high
    max_price NUMERIC(10,2),
    notes TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT user_wishlist_user_car_unique UNIQUE (user_id, car_id)
);

-- 4. Fotos Pessoais das Miniaturas do Usuário (user_car_images)
CREATE TABLE IF NOT EXISTS public.user_car_images (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_car_id UUID NOT NULL REFERENCES public.user_cars(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    storage_path TEXT NOT NULL,
    image_url TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Triggers para atualização automática do updated_at
CREATE TRIGGER update_user_cars_updated_at BEFORE UPDATE ON public.user_cars FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_user_wishlist_updated_at BEFORE UPDATE ON public.user_wishlist FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
