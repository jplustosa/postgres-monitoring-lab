SELECT
    datname AS database,
    usename AS user,
    COUNT(*) AS active_connections
FROM pg_stat_activity
WHERE state = 'active'
GROUP BY datname, usename
ORDER BY active_connections DESC;
