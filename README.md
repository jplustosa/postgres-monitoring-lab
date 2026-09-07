# PostgreSQL Monitoring Lab

> DBA-focused laboratory for PostgreSQL observability, query analysis and performance tuning.

**PostgreSQL · Docker · SQL · pg_stat_statements · Performance Tuning**

## Problem

Database incidents frequently start with signals such as high query latency, inefficient execution plans, excessive connections or resource contention. A DBA needs to move from symptom to evidence before applying a change.

This lab provides a reproducible environment for observing PostgreSQL, identifying expensive queries and validating performance improvements.

## What this project demonstrates

- PostgreSQL administration fundamentals.
- Reproducible database environment with Docker.
- Query performance analysis.
- `pg_stat_statements` usage.
- Workload simulation.
- Index analysis and optimization.
- Before/after validation of performance changes.
- DBA/DataOps operational reasoning.

## Operational workflow

```text
Generate workload
      ↓
Collect database statistics
      ↓
Identify expensive queries
      ↓
Inspect execution plan
      ↓
Apply controlled optimization
      ↓
Run workload again
      ↓
Compare results
```

The key principle is **measure → change → measure again**.

## Quick start

Start the PostgreSQL environment using the project's Docker configuration, then run the included SQL/scripts according to the repository structure.

For performance investigations, compare query execution before and after the optimization instead of relying only on subjective observations.

## DBA scenarios

The lab can be used to investigate:

- Slow queries.
- Missing or ineffective indexes.
- Query execution plans.
- Connection behavior.
- Database statistics.
- Performance regressions.
- Resource-intensive workloads.

## Portfolio value

This project complements the broader DataOps portfolio by focusing specifically on the **database reliability and performance** layer.

While the DataOps lab demonstrates controlled schema delivery, this project demonstrates how I approach **operational diagnosis and database optimization**.

## Next improvements

- Add automated performance benchmarks.
- Add Prometheus/Grafana database metrics.
- Add repeatable load generation.
- Add EXPLAIN/EXPLAIN ANALYZE result examples.
- Add before/after benchmark tables.
- Add CI validation for SQL scripts.
- Document a complete incident-style performance case.
