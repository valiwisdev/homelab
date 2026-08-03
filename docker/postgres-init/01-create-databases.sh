#!/bin/bash
set -e

## Create docmost and ryot users and databases (runs on first init)
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
CREATE USER docmost WITH PASSWORD '${DOCMOST_PASSWORD}';
CREATE DATABASE docmost OWNER docmost;
CREATE USER ryot WITH PASSWORD '${RYOT_PASSWORD}';
CREATE DATABASE ryot OWNER ryot;
EOSQL
