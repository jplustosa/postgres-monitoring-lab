SELECT
    pid,
    usename,
    datname,
    now() - query_start AS execution_time,
    state,
    query
FROM pg_stat_activity
WHERE state = 'active'
ORDER BY execution_time DESC;
