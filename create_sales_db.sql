CREATE DATABASE IF NOT EXISTS sqoop_demo;
USE sqoop_demo;

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    sale_date DATE NOT NULL
);

INSERT INTO sales (sale_id, product_name, quantity, unit_price, sale_date) VALUES
(1, 'Keyboard', 2, 799.00, '2026-09-01'),
(2, 'Mouse', 3, 399.00, '2026-09-02'),
(3, 'Monitor', 1, 8499.00, '2026-09-03'),
(4, 'USB Cable', 5, 149.00, '2026-09-04'),
(5, 'Headphones', 2, 1299.00, '2026-09-05');

CREATE TABLE IF NOT EXISTS sales_export (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    sale_date DATE NOT NULL
);

SELECT * FROM sales;
