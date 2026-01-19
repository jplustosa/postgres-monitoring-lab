#!/bin/bash

source ./env.sh

OUTDIR="../output"

psql "$DB_CONN" -f ../performance/01_top_total_time.sql > $OUTDIR/01_top_total_time_$(date +%Y%m%d_%H%M%S).csv
psql "$DB_CONN" -f ../performance/02_top_mean_time.sql > $OUTDIR/02_top_mean_time_$(date +%Y%m%d_%H%M%S).csv
psql "$DB_CONN" -f ../performance/03_most_called.sql > $OUTDIR/03_most_called_$(date +%Y%m%d_%H%M%S).csv
psql "$DB_CONN" -f ../performance/04_priority_queries.sql > $OUTDIR/04_priority_queries_$(date +%Y%m%d_%H%M%S).csv
