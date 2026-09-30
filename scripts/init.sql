-- Runs once, the first time the alot_pgdata volume is created.
-- (To re-run it: `docker compose down -v` deletes the volume and all data.)

-- Extensions in the main database
CREATE EXTENSION IF NOT EXISTS vector;    -- pgvector
CREATE EXTENSION IF NOT EXISTS pg_trgm;   -- trigram matching, handy for fuzzy symbol search

-- Separate database for integration tests, so they never touch dev data
CREATE DATABASE alot_test;
\connect alot_test
CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pg_trgm;