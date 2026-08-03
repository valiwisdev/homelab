#!/bin/bash
set -e

## Create ryot user and database (runs on first init)
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE USER ryot WITH PASSWORD '${RYOT_PASSWORD}';
CREATE DATABASE ryot OWNER ryot;
EOSQL
