-- @block
-- AVG can take only one column
SELECT AVG(total_orders) AS average_order_value
FROM (
    SELECT SUM(product.price) AS total_orders
    FROM orders
    LEFT JOIN product ON product.product_id = orders.product_id
    GROUP BY orders.customer_id  -- Grouping by customer_id to get the total order value per order (customer might order multiple products)
) AS subquery;
