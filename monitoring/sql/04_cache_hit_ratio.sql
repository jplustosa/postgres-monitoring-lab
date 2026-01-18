SELECT
    datname,
    blks_hit,
    blks_read,
    ROUND(
        (blks_hit::numeric / NULLIF(blks_hit + blks_read, 0)) * 100,
        2
    ) AS cache_hit_ratio_percent
FROM pg_stat_database
ORDER BY cache_hit_ratio_percent ASC;
