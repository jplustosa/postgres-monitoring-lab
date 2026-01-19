COPY (
    SELECT
        calls,
        ROUND(total_exec_time::numeric, 2) AS total_exec_time_ms,
        ROUND(mean_exec_time::numeric, 2) AS mean_exec_time_ms,
        rows,
        LEFT(query, 150) AS query_snippet
    FROM pg_stat_statements
    ORDER BY
        total_exec_time DESC,
        calls DESC
    LIMIT 15
) TO STDOUT WITH CSV HEADER;
