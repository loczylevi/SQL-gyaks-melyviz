USE northwind;
-- DESCRIBE products;  -- products megjelenitése 
SELECT MIN(list_price) FROM products;          -- a legkisebb értéket jeleniti meg a list_price-ból
SELECT * FROM products ORDER BY list_price;      -- novekvo sorend a list_price-ra
