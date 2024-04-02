-- We can remove the information_schema.columns

-- @block Sample data for the customer table
INSERT INTO customer (name, email, address)
SELECT CONCAT('Customer', id),
       CONCAT('customer', id, '@example.com'),
       CONCAT(id, ' Street, City', id, ', Country')
FROM (
    SELECT (ROW_NUMBER() OVER ()) AS id
    FROM information_schema.columns
    LIMIT 100
) AS t;

-- @block Sample data for the product table
INSERT INTO product (name, description, price, quantity)
SELECT CONCAT('Product', id),
       CONCAT('Description of product ', id),
       ROUND(RAND() * 1000 + 100, 2),
       FLOOR(RAND() * 100)
FROM (
    SELECT (ROW_NUMBER() OVER ()) AS id
    FROM information_schema.columns
    LIMIT 100
) AS t;

-- @block sample data for orders table
-- Sample data for the orders table
INSERT IGNORE INTO orders (customer_id, product_id)
SELECT 
    FLOOR(RAND() * 100) + 1 AS customer_id, -- Random customer ID between 1 and 100
    FLOOR(RAND() * 100) + 1 AS product_id    -- Random product ID between 1 and 100
FROM 
    information_schema.columns
LIMIT 
    100; -- Insert 100 sample orders