-- @block using corelated subquery
-- joining product and orders wrt to a customer_id will give me the price
-- and summing the price for customer_id in orders will give money spent
SELECT c.customer_id,
    COALESCE(
        (
            SELECT SUM(p.price)
            FROM orders o
                JOIN product p ON o.product_id = p.product_id
            WHERE o.customer_id = c.customer_id
        ),
        0
    ) AS MoneySpent
FROM customer c;
-- @block using join
-- first join all the tables
-- now for each orders.customer_id we will get order price
-- now if we group them we will get the grouped result
-- now we can apply the sum of price to the money spent
SELECT customer.customer_id,
    COUNT(orders.customer_id) as Orders,
    COALESCE(SUM(product.price), 0) as MoneySpent
FROM customer
    LEFT JOIN orders on orders.customer_id = customer.customer_id
    LEFT JOIN product on product.product_id = orders.product_id
GROUP BY customer.customer_id;