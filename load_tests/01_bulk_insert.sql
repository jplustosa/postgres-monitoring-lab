INSERT INTO orders (customer_id, amount, status)
SELECT
    (random() * 10000)::int,
    (random() * 500)::numeric(10,2),
    CASE
        WHEN random() < 0.7 THEN 'NEW'
        WHEN random() < 0.9 THEN 'PAID'
        ELSE 'CANCELLED'
    END
FROM generate_series(1, 500000);
