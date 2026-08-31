# Hot Wheels Collector — Modelo do Banco de Dados (PostgreSQL + Supabase)

Este documento descreve a arquitetura, estrutura relacional, políticas de segurança RLS (Row Level Security) e índices de desempenho da base de dados do **Hot Wheels Collector**.

---

## 1. Princípio Arquitetural: Separação de Responsabilidades

O banco de dados é rigorosamente dividido em duas esferas isoladas:

1. **Catálogo Global (Público/Administrativo)**: Contém informações técnicas universais sobre modelos, castings, fabricantes, séries, categorias, variações e códigos identificadores (SKU, EAN, Barcode). É compartilhado entre todos os usuários.
2. **Coleção do Usuário (Privado por RLS)**: Contém dados específicos de posse de cada colecionador (status de conservação, preço pago, valor estimado, data de aquisição, local de compra e observações pessoais).

---

## 2. Diagrama Entidade-Relacionamento (Conceitual)

```
┌───────────────────────────────────────────────────────────────────┐
│                          CATÁLOGO GLOBAL                          │
│                                                                   │
│  manufacturers (1) ───< cars (N) >─── (1) series                  │
│       │                   │                 │                     │
│       │                   ├─> categories    │                     │
│       │                   ├─> collections   │                     │
│       │                   │                 │                     │
│       ▼                   ▼                 ▼                     │
│  car_variations (N) <── cars (1) ──> car_images (N)                │
│       │                                                           │
│       └──────────> car_identifiers (N)                            │
│       │                                                           │
│       └──────────> data_sources (1)                               │
└───────────────────────────────────────────────────────────────────┘
                                 │
                     referenciado por (FK)
                                 │
                                 ▼
┌───────────────────────────────────────────────────────────────────┐
│                        COLEÇÃO DO USUÁRIO                         │
│                    (RLS: user_id = auth.uid())                    │
│                                                                   │
│  user_cars (user_id, car_id, status, purchase_price, date...)     │
│  user_favorites (user_id, car_id) [UNIQUE]                        │
│  user_wishlist (user_id, car_id, priority, max_price) [UNIQUE]    │
│  user_car_images (user_car_id, user_id, storage_path)             │
└───────────────────────────────────────────────────────────────────┘
```

---

## 3. Dicionário de Tabelas

### 3.1. Catálogo Global

#### `manufacturers`
Armazena fabricantes automotivos reais.
- `id` (UUID, PK)
- `name` (TEXT, UNIQUE, Not Null) — Ex: Porsche, Nissan, Dodge
- `country` (TEXT) — País de origem do fabricante
- `created_at`, `updated_at` (TIMESTAMPTZ)

#### `categories`
Categorias estilísticas dos veículos.
- `id` (UUID, PK)
- `name` (TEXT, UNIQUE, Not Null) — Ex: Sports Car, JDM, Muscle, Racing, Fantasy
- `description` (TEXT)
- `created_at`, `updated_at` (TIMESTAMPTZ)

#### `series`
Séries oficiais de lançamento.
- `id` (UUID, PK)
- `name` (TEXT, Not Null) — Ex: Mainline 2024, Car Culture, Boulevard
- `year` (INT) — Ano da série
- `type` (TEXT) — Mainline, Premium, RLC, Target Exclusive
- `description` (TEXT)
- Constraint: `UNIQUE(name, year)`

#### `collections`
Coleções temáticas ou subconjuntos de lançamento.
- `id` (UUID, PK)
- `name`, `year`, `description`, `type`

#### `colors` & `wheels`
Tabelas auxiliares para padronização de pintura e tipos de roda.
- `colors`: `id`, `name` (UNIQUE), `hex` (HEX Color)
- `wheels`: `id`, `name` (UNIQUE), `description`

#### `cars`
Tabela principal do Catálogo Global de miniaturas.
- `id` (UUID, PK)
- `name` (TEXT, Not Null) — Ex: "Porsche 911 GT3"
- `model_name` (TEXT) — Modelo real do veículo
- `casting_name` (TEXT) — Nome interno da matriz/molde
- `year` (INT, Not Null) — Ano de lançamento
- `manufacturer_id` (FK -> `manufacturers.id`)
- `series_id` (FK -> `series.id`)
- `collection_id` (FK -> `collections.id`)
- `category_id` (FK -> `categories.id`)
- `scale` (VARCHAR(10)) — Padrão `1:64`
- `color` (TEXT), `base_color` (TEXT)
- `country` (TEXT) — País de fabricação da miniatura
- `description` (TEXT)
- `production_status` (TEXT) — Active, Discontinued, Rare
- `source_id` (FK -> `data_sources.id`) — Rastreabilidade da fonte
- `is_demo` (BOOLEAN) — Flag para registros de testes/demonstração
- `created_at`, `updated_at` (TIMESTAMPTZ)

#### `car_variations`
Variações específicas de pintura/decalque de um mesmo molde.
- `id` (UUID, PK)
- `car_id` (FK -> `cars.id` ON DELETE CASCADE)
- `variation_name` (TEXT)
- `year`, `color`, `decal`, `wheel_type`, `base_type`, `interior_color`, `window_color`, `country_of_origin`, `notes`

#### `car_images`
Fotos e imagens oficiais catalográficas.
- `id` (UUID, PK)
- `car_id` (FK -> `cars.id` ON DELETE CASCADE)
- `variation_id` (FK -> `car_variations.id`)
- `storage_path` (TEXT) — Caminho no Supabase Storage (`/catalog/...`)
- `image_url` (TEXT)
- `image_type` (TEXT) — `front`, `back`, `side`, `package`, `loose`, `detail`
- `is_primary` (BOOLEAN)

#### `car_identifiers`
Códigos e identificadores para busca e leitor de código de barras.
- `id` (UUID, PK)
- `car_id` (FK -> `cars.id` ON DELETE CASCADE)
- `variation_id` (FK -> `car_variations.id`)
- `identifier_type` (TEXT) — `SKU`, `UPC`, `EAN`, `Barcode`, `Toy Number`, `Collector Number`
- `identifier_value` (TEXT, Not Null)
- `source` (TEXT)

#### `data_sources`
Rastreamento de licença e origem de dados públicos.
- `id` (UUID, PK)
- `name`, `url`, `license`, `description`

---

### 3.2. Coleção do Usuário

#### `user_cars`
Miniaturas que pertencem à coleção privada do colecionador.
- `id` (UUID, PK)
- `user_id` (FK -> `auth.users.id` ON DELETE CASCADE)
- `car_id` (FK -> `cars.id` ON DELETE CASCADE)
- `variation_id` (FK -> `car_variations.id`)
- `status` (TEXT) — `owned` (Possuo), `wanted` (Quero), `looking` (Procurando), `trade` (Para Troca), `sold` (Vendido), `duplicate` (Duplicado)
- `purchase_price` (NUMERIC(10,2)) — Preço pago em R$
- `estimated_value` (NUMERIC(10,2)) — Valor estimado atual em R$
- `purchase_date` (DATE) — Data de aquisição
- `purchase_location` (TEXT) — Loja, evento ou vendedor
- `condition` (TEXT) — `sealed` (Lacrado), `loose` (Solto), `mint`, `damaged`
- `notes` (TEXT) — Observações particulares
- `created_at`, `updated_at` (TIMESTAMPTZ)

#### `user_favorites`
Carrinhos favoritos marcados pelo usuário.
- `id` (UUID, PK)
- `user_id` (FK -> `auth.users.id`)
- `car_id` (FK -> `cars.id`)
- Constraint: `UNIQUE(user_id, car_id)`

#### `user_wishlist`
Lista de desejos com prioridade e teto de preço.
- `id` (UUID, PK)
- `user_id` (FK -> `auth.users.id`)
- `car_id` (FK -> `cars.id`)
- `priority` (TEXT) — `low`, `medium`, `high`
- `max_price` (NUMERIC(10,2))
- `notes` (TEXT)
- Constraint: `UNIQUE(user_id, car_id)`

#### `user_car_images`
Fotos tiradas e enviadas pelo próprio usuário das suas peças.
- `id`, `user_car_id`, `user_id`, `storage_path`, `image_url`, `created_at`

---

## 4. Políticas de Segurança (Row Level Security — RLS)

### Catálogo Global
- **SELECT**: Aberto a todos os usuários (público).
- **INSERT / UPDATE / DELETE**: Permitido exclusivamente para administradores (`is_admin() = true`).

### Coleção Privada (`user_cars`, `user_favorites`, `user_wishlist`, `user_car_images`)
- **ALL (SELECT, INSERT, UPDATE, DELETE)**: Restrito estritamente a `auth.uid() = user_id`.

---

## 5. Estrutura do Supabase Storage

```
supabase-storage/
├── catalog/                  ← Imagens oficiais do catálogo (público)
│   └── {car_id}/
│       ├── primary.webp
│       └── package.webp
└── users/                    ← Imagens pessoais enviadas pelo colecionador (privado/RLS)
    └── {user_id}/
        └── {user_car_id}/
            └── photo_01.jpg
```
