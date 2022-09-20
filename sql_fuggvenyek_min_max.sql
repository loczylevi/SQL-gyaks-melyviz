USE northwind;
-- DESCRIBE products;  -- products megjelenitése 
SELECT MIN(list_price) AS Legolcsóbb FROM products;          -- a legkisebb értéket jeleniti meg a list_price-ból  -- AS ugy hivatkozunk rá hogy legolcsobb konkrétan egy változo érték mint Python
SELECT * FROM products ORDER BY list_price;      -- novekvo sorend a list_price-ra

SELECT MAX(list_price) AS Leggdrágább FROM products;

SELECT * FROM products ORDER BY list_price DESC;   -- csokkeno sorrend 
