-- 001_initial_schema.sql
-- Hot Wheels Collector — Extensões e Funções Utilitárias

-- Habilitar extensão para geração de UUID
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Habilitar extensão pg_trgm para busca textual aproximada (trigramas)
CREATE EXTENSION IF NOT EXISTS "pg_trgm";

-- Função trigger para atualizar automaticamente o campo updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
