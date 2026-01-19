CREATE INDEX idx_orders_status
ON orders (status);

CREATE INDEX idx_orders_customer_id
ON orders (customer_id);

CREATE INDEX idx_orders_created_at
ON orders (created_at);
