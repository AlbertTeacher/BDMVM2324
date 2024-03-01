CREATE DATABASE IF NOT EXISTS Customers;

USE Customers;

CREATE TABLE Customers.customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    country_id INT
);

CREATE TABLE Customers.orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT
);

CREATE TABLE Customers.order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(255),
    quantity INT
);

CREATE TABLE Customers.countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(255)
);


INSERT INTO Customers.customers (customer_id, customer_name, country_id)
VALUES
    (1, 'Customer A', 1),
    (2, 'Customer B', 2),
    (3, 'Customer C', 1),
    (4, 'Customer D', 3);

INSERT INTO Customers.orders (order_id, order_date, customer_id)
VALUES
    (101, '2023-01-15', 1),
    (102, '2023-02-20', 2),
    (103, '2023-03-10', 1),
    (104, '2023-04-05', 3);

INSERT INTO Customers.order_items (item_id, order_id, product_name, quantity)
VALUES
    (1001, 101, 'Product X', 2),
    (1002, 102, 'Product Y', 1),
    (1003, 103, 'Product X', 3),
    (1004, 104, 'Product Z', 2);

INSERT INTO Customers.countries (country_id, country_name)
VALUES
    (1, 'USA'),
    (2, 'Canada'),
    (3, 'UK');

