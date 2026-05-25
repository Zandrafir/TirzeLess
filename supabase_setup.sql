-- =============================================
-- TirzeLess — Setup do banco de dados Supabase
-- Execute este script no SQL Editor do Supabase
-- =============================================

-- Tabela de registros de peso e aplicação
CREATE TABLE IF NOT EXISTS registros (
  id          BIGSERIAL PRIMARY KEY,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  data_str    TEXT,
  peso        NUMERIC(5,2) NOT NULL,
  cintura     NUMERIC(5,2),
  dose        TEXT,
  zona        TEXT,
  nota        TEXT,
  photo_url   TEXT
);

-- Tabela de macros diários
CREATE TABLE IF NOT EXISTS macros (
  id          BIGSERIAL PRIMARY KEY,
  dia         DATE NOT NULL UNIQUE DEFAULT CURRENT_DATE,
  agua        NUMERIC(7,1) DEFAULT 0,
  proteina    NUMERIC(6,1) DEFAULT 0,
  carboidrato NUMERIC(6,1) DEFAULT 0,
  fibras      NUMERIC(5,1) DEFAULT 0
);

-- Tabela de treinos
CREATE TABLE IF NOT EXISTS treinos (
  id          BIGSERIAL PRIMARY KEY,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  nome        TEXT NOT NULL,
  pdf_nome    TEXT,
  ordem       INT DEFAULT 0
);

-- Tabela de configurações (uma linha só)
CREATE TABLE IF NOT EXISTS config (
  id            INT PRIMARY KEY DEFAULT 1,
  meta_agua     INT DEFAULT 2500,
  meta_proteina INT DEFAULT 120,
  meta_carbo    INT DEFAULT 150,
  meta_fibras   INT DEFAULT 25,
  dose_atual    TEXT DEFAULT '5 mg',
  meta_peso     NUMERIC(5,2) DEFAULT 75,
  semanas       INT DEFAULT 1,
  zonas_usadas  TEXT[] DEFAULT '{}'
);

-- Inserir config padrão
INSERT INTO config (id) VALUES (1)
ON CONFLICT (id) DO NOTHING;

-- Desabilitar RLS (app de uso pessoal, sem autenticação)
ALTER TABLE registros DISABLE ROW LEVEL SECURITY;
ALTER TABLE macros    DISABLE ROW LEVEL SECURITY;
ALTER TABLE treinos   DISABLE ROW LEVEL SECURITY;
ALTER TABLE config    DISABLE ROW LEVEL SECURITY;
