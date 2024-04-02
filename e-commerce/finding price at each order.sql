SELECT orders.*,product.price
FROM orders
NATURAL JOIN product
LIMIT 30;