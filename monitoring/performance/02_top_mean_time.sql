COPY (
    SELECT
        calls,
        total_exec_time,
        mean_exec_time,
        rows,
        query
    FROM pg_stat_statements
    ORDER BY mean_exec_time DESC
    LIMIT 20
) TO STDOUT WITH CSV HEADER;
