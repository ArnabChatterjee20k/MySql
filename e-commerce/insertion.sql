
-- @block Sample data for the customer table
INSERT INTO customer (name, email, address) VALUES
('John Doe', 'john@example.com', '123 Main St, City, Country'),
('Jane Smith', 'jane@example.com', '456 Elm St, Town, Country'),
('Alice Johnson', 'alice@example.com', '789 Oak St, Village, Country');

-- @block Sample data for the product table
INSERT INTO product (name, description, price, quantity) VALUES
('Laptop', 'High-performance laptop with SSD', 999.99, 10),
('Smartphone', 'Latest model smartphone with great camera', 599.99, 20),
('Tablet', 'Lightweight tablet with long battery life', 299.99, 15);

-- @block Sample data for orders
INSERT into orders(customer_id,product_id) VALUES
(1,1),
(1,2),
(4,1)