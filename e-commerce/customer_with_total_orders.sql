-- @block using subquery
SELECT customer_id,
    name,
    (
        SELECT COUNT(*)
        from orders
        WHERE customer_id = c.customer_id
    ) AS Order_Count
from customer c
LIMIT 30;
-- @block using Natural join
-- we cant use directly * due full_group_by mode of mysql
-- so using customer.*
-- Also due to Natural join order count 0 will be ommited
-- to solve this use left join
SELECT customer.*,
    COUNT(orders.customer_id) as Order_Count
FROM customer
    NATURAL JOIN orders
GROUP BY customer.customer_id
ORDER BY customer.customer_id
LIMIT 30;
-- @block using left join
-- here order of order count 0 are not omitted
-- use orders.customer_id
SELECT customer.*,
    COUNT(orders.customer_id) as Order_Count
FROM customer
    LEFT JOIN orders ON customer.customer_id = orders.customer_id
GROUP BY customer.customer_id
ORDER BY customer_id
LIMIT 30;

-- @block we can also use window function