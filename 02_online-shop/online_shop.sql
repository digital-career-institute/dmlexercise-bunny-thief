-- Online shop
DROP DATABASE exercise_online_shop;

CREATE DATABASE exercise_online_shop;
use exercise_online_shop;

CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(5, 2),
stock_quantity int
);

DESCRIBE products;

INSERT INTO products(product_id, product_name, price, stock_quantity)
VALUES (1, 'Laptop', 999.99, 20),
(2, 'Smartphone', 499.50, 30),
(3, 'Headphones', 79.99, 50),
(4, 'Tablet', 299.75, 15),
(5, 'Bluetooth Speaker', 39.95, 40),
(6, 'Keyboard', 29.95, 10);

SELECT * FROM products;

SELECT product_name, price FROM products;

SELECT * FROM products WHERE price >= 100 ORDER BY price DESC;

SELECT product_name, price FROM products WHERE stock_quantity < 30 ORDER By price DESC;

SELECT product_name, price FROM products WHERE stock_quantity < 30 AND price > 100 ORDER BY price DESC;