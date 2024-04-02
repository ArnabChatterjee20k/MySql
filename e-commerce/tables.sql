
-- @block
CREATE DATABASE test;
-- @block
CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    address TEXT NOT NULL
);

-- @block
CREATE TABLE product (
    product_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description TEXT NOT NULL,
    price FLOAT NOT NULL,
    quantity INTEGER NOT NULL
);

-- @block
-- orders should be the table name as order is keyword
CREATE TABLE orders(
    customer_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(product_id) REFERENCES product(product_id),
    PRIMARY KEY(customer_id,product_id)
)