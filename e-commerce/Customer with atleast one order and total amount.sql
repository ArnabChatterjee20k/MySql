-- @block using joins
-- amount spent = n(customer_id in orders) * product_price(product_id)
-- or amount spent = sum(product price for product_id in both orders and products)
-- number of orders = n(customer_id in orders)
SELECT orders.customer_id,
    count(orders.customer_id) as Orders,
    SUM(product.price) as AmountSpent
from orders
    NATURAL JOIN product
GROUP BY customer_id
HAVING COUNT(orders.customer_id) >= 1;
-- @block using subquery
-- here without the where exists of the subquery,the price will be null for customer_id not in orders as we are quering customers as parent
-- where exists is checking for the customer made atleast one order
SELECT
    c.customer_id,
    (SELECT SUM(p.price)
     FROM orders o
     JOIN product p ON o.product_id = p.product_id
     WHERE o.customer_id = c.customer_id
    ) AS total_amount_spent
FROM
    customer c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);