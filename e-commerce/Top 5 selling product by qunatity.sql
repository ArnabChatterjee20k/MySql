-- @block using joins and grouping
SELECT product.product_id,
    product.name,
    COUNT(orders.product_id) as Sold
FROM orders
    LEFT JOIN product on product.product_id = orders.product_id
GROUP BY orders.product_id
ORDER BY COUNT(orders.product_id) DESC
LIMIT 5;
-- @block using subquery
-- orders give us the orders quantity
-- product give us the product details
-- here subquery result will be used for joining
-- and later we are using that column from subquery outside
SELECT p.name,
    p.description,
    o.sold as Sold
FROM product p
    LEFT JOIN (
        SELECT product_id,
            COALESCE(count(*), 0) as sold
        from orders
        GROUP BY product_id
    ) o ON p.product_id = o.product_id
ORDER BY o.sold DESC
LIMIT 5;