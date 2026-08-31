# PortableGarage — Aplicação Web Responsiva

Plataforma para catalogação, gerenciamento, pesquisa e organização de coleções de miniaturas Hot Wheels.

---

## 🚀 Tecnologias

- **Frontend**: HTML5, CSS3 Vanilla (Design System com temas claro/escuro e micro-animações), JavaScript (ES6+ modular)
- **Backend / Database**: Supabase, PostgreSQL, Supabase Storage
- **Segurança**: Row Level Security (RLS), sanitização DOM contra XSS, validação de arquivos
- **Arquitetura**: Separação clara entre Catálogo Global e Coleção Pessoal do Usuário

---

## 📁 Arquitetura do Projeto

```
Hot Wheels/
├── index.html                    ← Landing / Splash inteligente de entrada
├── DATABASE.md                   ← Documentação detalhada do modelo de banco de dados
├── .env.example                  ← Variáveis de ambiente modelo
├── css/
│   ├── style.css                 ← Design system, temas (dark/light), tokens e resets
│   ├── layout.css                ← Layout App-Shell, sidebar responsiva, topbar e bottom nav
│   ├── components.css            ← Biblioteca de UI (botões, cards, badges, formulários, modais)
│   ├── animations.css            ← Animações CSS, keyframes e efeitos stagger
│   ├── dashboard.css             ← Estilos do Dashboard e gráficos
│   └── collection.css            ← Estilos de grade/lista de coleção e formulários
├── js/
│   ├── services/                 ← Camada de Serviços desacoplada do banco
│   │   ├── catalog.service.js    ← Consultas ao Catálogo Global (com fallback de teste)
│   │   ├── collection.service.js ← Gerenciamento da Coleção Pessoal
│   │   ├── favorites.service.js  ← Gerenciamento de Favoritos
│   │   ├── wishlist.service.js   ← Gerenciamento da Lista de Desejos
│   │   └── import.service.js     ← Serviço de Importação CSV/JSON
│   ├── app.js                    ← Inicialização global, ThemeManager, NavManager
│   ├── auth.js                   ← AuthManager (gerenciamento de sessão)
│   ├── cars.js                   ← Adaptador de compatibilidade UI para os serviços
│   ├── shell.js                  ← Shell Builder dinâmico (sidebar + topbar)
│   ├── supabase.js               ← Cliente Supabase configurável
│   └── ui.js                     ← Componentes UI (Toast, Modal, Confirm, Skeleton)
├── pages/
│   ├── login.html / cadastro.html
│   ├── dashboard.html / colecao.html / adicionar.html
│   ├── explorar.html / favoritos.html / estatisticas.html / configuracoes.html
└── supabase/
    └── migrations/               ← Migrações SQL versionadas do PostgreSQL
        ├── 001_initial_schema.sql
        ├── 002_catalog_tables.sql
        ├── 003_user_collection.sql
        ├── 004_rls_policies.sql
        ├── 005_indexes_fts.sql
        └── 006_seed_data.sql
```

---

## 🛠️ Como Configurar o Supabase

1. Crie um projeto em [https://supabase.com](https://supabase.com).
2. Na aba **SQL Editor** do Supabase, execute sequencialmente as migrações presentes na pasta `supabase/migrations/`:
   - `001_initial_schema.sql`
   - `002_catalog_tables.sql`
   - `003_user_collection.sql`
   - `004_rls_policies.sql`
   - `005_indexes_fts.sql`
   - `006_seed_data.sql` (dados de demonstração autorizados)
3. Copie a `SUPABASE_URL` e `SUPABASE_ANON_KEY` das configurações do seu projeto no Supabase.
4. Preencha as meta tags nos arquivos HTML ou utilize as variáveis de ambiente baseadas em `.env.example`.

---

## 📊 Formato de Importação em Lote (CSV / JSON)

### Exemplo de Arquivo CSV (`colecao.csv`)
```csv
name,year,manufacturer,series,color,status,price_paid,notes
Porsche 911 GT3,2024,Porsche,Mainline 2024,Azul Metálico,own,15.00,Cartela em perfeito estado
Nissan Skyline GT-R R34,2023,Nissan,Car Culture,Branco Pérola,own,45.00,Pneus de borracha
```

### Exemplo de Arquivo JSON (`colecao.json`)
```json
[
  {
    "name": "Dodge Charger Daytona",
    "year": 2024,
    "manufacturer": "Dodge",
    "series": "Mainline 2024",
    "color": "Vermelho",
    "status": "own",
    "price_paid": 15.00,
    "notes": "Coleção Muscle Cars"
  }
]
```

---

## 🔐 Licença e Segurança dos Dados

- **Proteção da Propriedade Intelectual**: O catálogo não contém raspagens (scraping) ou reproduções de dados proprietários da Mattel ou de concorrentes.
- **Isolamento de Dados**: Coleções pessoais são isoladas por regras RLS no PostgreSQL (`auth.uid() = user_id`).
