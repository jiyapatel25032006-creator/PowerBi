CREATE DATABASE analytics_demo;

USE analytics_demo;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  product VARCHAR(50),
  amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (name, city) VALUES
('Rohan', 'Mumbai'),
('Priya', 'Delhi'),
('Karan', 'Pune'),
('Neha', 'Chennai');

INSERT INTO orders (customer_id, product, amount) VALUES
(1, 'Laptop', 50000),
(3, 'Mobile', 20000),
(1, 'Mouse', 1500),
(5, 'Headphones', 3000);



