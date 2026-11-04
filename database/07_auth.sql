BEGIN;

ALTER TABLE pengguna
  ADD COLUMN IF NOT EXISTS kata_sandi_hash TEXT;

ALTER TABLE pengguna
  ADD COLUMN IF NOT EXISTS versi_token INTEGER NOT NULL DEFAULT 0
  CHECK (versi_token >= 0);

COMMIT;psql -h localhost -U postgres -d sisabaik_dev -v ON_ERROR_STOP=1 -f database/07_auth.sql