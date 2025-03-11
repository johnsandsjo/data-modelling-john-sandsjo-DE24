CREATE SCHEMA IF NOT EXISTS ezecream_05;

SET search_path TO ezecream_05;
-- instead of typying ezecream_05.table_name

CREATE TABLE IF NOT EXISTS Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50)NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    personal_number CHAR(12),
    email VARCHAR(255) NOT NULL,
    address VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
    --note that order is already a reserved word in sql
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);

SET search_path TO ezecream_05;

CREATE TABLE IF NOT EXISTS Product (
    product_id SERIAL PRIMARY KEY,
    name varchar(50),
    price float
);

CREATE TABLE IF NOT EXISTS OrderItem (
    orderitem_id SERIAL PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES orders (order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product (product_id) ON DELETE CASCADE
);