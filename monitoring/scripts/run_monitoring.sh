#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SQL_DIR="$BASE_DIR/sql"
OUT_DIR="$BASE_DIR/output"
DATE=$(date +"%Y%m%d_%H%M%S")

source "$BASE_DIR/scripts/env.sh"

mkdir -p "$OUT_DIR"

for sql_file in "$SQL_DIR"/*.sql; do
    name=$(basename "$sql_file" .sql)
    psql -f "$sql_file" --csv > "$OUT_DIR/${name}_${DATE}.csv"
done
