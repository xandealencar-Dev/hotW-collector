-- 006_seed_data.sql
-- Hot Wheels Collector — Dados Iniciais de Demonstração (Permitidos)
-- NOTA: Todos os registros possuem a flag is_demo = true. NENHUM dado proprietário de terceiros.

-- 1. Fabricantes de Demonstração
INSERT INTO public.manufacturers (id, name, country) VALUES
    ('11111111-1111-1111-1111-111111111101', 'Porsche', 'Alemanha'),
    ('11111111-1111-1111-1111-111111111102', 'Nissan', 'Japão'),
    ('11111111-1111-1111-1111-111111111103', 'Toyota', 'Japão'),
    ('11111111-1111-1111-1111-111111111104', 'Dodge', 'Estados Unidos'),
    ('11111111-1111-1111-1111-111111111105', 'Ford', 'Estados Unidos')
ON CONFLICT (name) DO NOTHING;

-- 2. Categorias de Demonstração
INSERT INTO public.categories (id, name, description) VALUES
    ('22222222-2222-2222-2222-222222222201', 'Sports Car', 'Esportivos modernos e clássicos de alta performance'),
    ('22222222-2222-2222-2222-222222222202', 'JDM', 'Carros esportivos do mercado doméstico japonês'),
    ('22222222-2222-2222-2222-222222222203', 'Muscle', 'Carros clássicos e modernos americanos de alta cilindrada'),
    ('22222222-2222-2222-2222-222222222204', 'Racing', 'Veículos de competição e pista'),
    ('22222222-2222-2222-2222-222222222205', 'Fantasy', 'Modelos conceituais e fantásticos')
ON CONFLICT (name) DO NOTHING;

-- 3. Séries de Demonstração
INSERT INTO public.series (id, name, year, type, description) VALUES
    ('33333333-3333-3333-3333-333333333301', 'Mainline 2024', 2024, 'Mainline', 'Série principal básica de lançamentos do ano'),
    ('33333333-3333-3333-3333-333333333302', 'Car Culture', 2024, 'Premium', 'Série premium para colecionadores exigentes'),
    ('33333333-3333-3333-3333-333333333303', 'Boulevard', 2023, 'Premium', 'Série exclusiva com pneu de borracha e corpo em metal')
ON CONFLICT DO NOTHING;

-- 4. Cores Primárias
INSERT INTO public.colors (id, name, hex) VALUES
    ('44444444-4444-4444-4444-444444444401', 'Vermelho', '#E8302A'),
    ('44444444-4444-4444-4444-444444444402', 'Azul Metálico', '#3D8EF0'),
    ('44444444-4444-4444-4444-444444444403', 'Branco Pérola', '#FFFFFF'),
    ('44444444-4444-4444-4444-444444444404', 'Preto Fosco', '#111827'),
    ('44444444-4444-4444-4444-444444444405', 'Amarelo Ouro', '#F5C518')
ON CONFLICT (name) DO NOTHING;

-- 5. Carrinhos de Demonstração do Catálogo Global
INSERT INTO public.cars (id, name, model_name, casting_name, year, manufacturer_id, series_id, category_id, scale, color, description, is_demo) VALUES
    (
        '55555555-5555-5555-5555-555555555501',
        'Porsche 911 GT3',
        '911 GT3',
        'Porsche 911 GT3',
        2024,
        '11111111-1111-1111-1111-111111111101',
        '33333333-3333-3333-3333-333333333301',
        '22222222-2222-2222-2222-222222222201',
        '1:64',
        'Azul Metálico',
        'Edição especial de demonstração do esporte alemão de alta precisão.',
        true
    ),
    (
        '55555555-5555-5555-5555-555555555502',
        'Nissan Skyline GT-R (R34)',
        'Skyline GT-R R34',
        'Nissan Skyline R34',
        2023,
        '11111111-1111-1111-1111-111111111102',
        '33333333-3333-3333-3333-333333333302',
        '22222222-2222-2222-2222-222222222202',
        '1:64',
        'Branco Pérola',
        'Ícone da cultura JDM com rodas Real Riders de borracha.',
        true
    ),
    (
        '55555555-5555-5555-5555-555555555503',
        'Dodge Charger Daytona',
        'Charger Daytona',
        'Dodge Daytona 1969',
        2024,
        '11111111-1111-1111-1111-111111111104',
        '33333333-3333-3333-3333-333333333301',
        '22222222-2222-2222-2222-222222222203',
        '1:64',
        'Vermelho',
        'Lenda do stock car americano com asa traseira elevada.',
        true
    ),
    (
        '55555555-5555-5555-5555-555555555504',
        'Toyota GR Supra',
        'GR Supra 2023',
        'Toyota Supra A90',
        2023,
        '11111111-1111-1111-1111-111111111103',
        '33333333-3333-3333-3333-333333333303',
        '22222222-2222-2222-2222-222222222202',
        '1:64',
        'Amarelo Ouro',
        'Novo esportivo japonês em versão Boulevard.',
        true
    )
ON CONFLICT DO NOTHING;

-- 6. Identificadores de Exemplo (para leitor de código de barras / SKU)
INSERT INTO public.car_identifiers (car_id, identifier_type, identifier_value, source) VALUES
    ('55555555-5555-5555-5555-555555555501', 'SKU', 'HKG42-D7C1', 'Demo Catalog'),
    ('55555555-5555-5555-5555-555555555501', 'Barcode', '0887961987654', 'Demo Barcode'),
    ('55555555-5555-5555-5555-555555555502', 'SKU', 'FLC33-D7C2', 'Demo Catalog'),
    ('55555555-5555-5555-5555-555555555502', 'Barcode', '0887961987661', 'Demo Barcode')
ON CONFLICT DO NOTHING;
