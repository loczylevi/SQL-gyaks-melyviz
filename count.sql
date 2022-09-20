USE northwind;
-- SELECT COUNT(id) AS Szamlalo_cuccmok1 FROM products;
SELECT COUNT(description) AS Szamlalo_cuccmok2 FROM products;           -- Számlál a nem egyértelmű
SELECT * FROM products WHERE description IS NOT NULL;

SELECT COUNT(id) FROM products WHERE list_price = 1.2;    -- nagyon Barokkos Kész "Pithon"

SELECT * FROM products ORDER BY list_price;


