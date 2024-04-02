-- @block using subquery
-- subquery to get price column.
-- we dont need the whole price column so we have applied the where condition based on the current order
-- we are passing a column of price where the product id is equal to the product of current order
SELECT SUM(
        (
            SELECT price
            FROM product
            WHERE product.product_id = orders.product_id
        )
    ) as total_revenue
from orders;

-- @block using join
-- first find the price of each order
-- then pass it to the SUM
-- using natural join so that they automatically get joined

SELECT SUM(product.price) as total 
from orders
NATURAL JOIN product;