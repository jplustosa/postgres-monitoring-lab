SELECT * FROM orders WHERE status = 'PAID';

SELECT * FROM orders
WHERE customer_id = 1234
ORDER BY created_at DESC;

SELECT COUNT(*) FROM orders
WHERE amount > 300;
