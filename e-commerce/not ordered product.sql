
-- @block using subquery
-- find distinct product_id from orders means which are ordered
-- now find the product_id from product which are not in the above
SELECT product_id 
from product
WHERE product.product_id NOT IN (
    select DISTINCT orders.product_id
    from orders
);

-- @block using left join
-- left join means left table data + common data of left and right
-- now left table = product and right = orders
-- now if we remove the intersection we will be left with products which are not in orders
-- ven diagram -> (product (common) orders) => not order product = product - common
-- here common means product which are ordered and present in orders table
-- we will get null in the right table side if left table is not present in right
-- so orders.product_id will be null if product.product_id is not present in orders 
select product.product_id
from product
LEFT JOIN orders
on product.product_id = orders.product_id
WHERE orders.product_id is NULL;