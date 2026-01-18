SELECT
    pid,
    usename,
    datname,
    client_addr,
    state,
    state_change
FROM pg_stat_activity
WHERE state = 'idle'
ORDER BY state_change;
