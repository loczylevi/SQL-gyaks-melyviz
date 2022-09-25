DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;
USE shop;


CREATE TABLE customers (
      customer_id INT,
      name VARCHAR(40),
      PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
      order_id INT,
      order_date DATE,
      customer_id INT,
      PRIMARY KEY (order_id),
      FOREIGN KEY (customer_id) REFERENCES customers (customer_id)  -- az idegen kulkcsal kapcsoljuk össze a 2 táblát 
);                                                                      -- Összekapcsolt táblák adatait nem lehet se DROP-olni se DELETE-elni

INSERT INTO customers (customer_id, name) VALUES (1, 'Kis Peter');
INSERT INTO customers (customer_id, name) VALUES (2, 'Nagy Anita');
INSERT INTO customers (customer_id, name) VALUES (77, 'Szego Pal');
INSERT INTO customers (customer_id, name) VALUES (101, 'Horvath Tamas');
INSERT INTO customers (customer_id, name) VALUES (102, 'Szabo Nora');

INSERT INTO orders (order_id, order_date, customer_id) VALUES (1000, '2022-01-05', 1);
INSERT INTO orders (order_id, order_date, customer_id) VALUES (1001, '2022-01-07', 2);
INSERT INTO orders (order_id, order_date, customer_id) VALUES (1002, '2022-02-03', 77);
INSERT INTO orders (order_id, order_date, customer_id) VALUES (1003, '2022-01-09', 77);
