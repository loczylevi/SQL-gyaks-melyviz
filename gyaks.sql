DROP DATABASE IF EXISTS muhely; -- vizsgál arra gogy van ilyen adatbázis ha van törli ha nincs akkor nincs akkor nem történik semmi
CREATE DATABASE muhely;
USE muhely;

CREATE TABLE szgk (
    id INT PRIMARY KEY AUTO_INCREMENT, -- integer , elsődleges kulcs                     --PRIMARY KEY aq NOT NULL és a UNIQUE szerelem gyermeke
    tipus VARCHAR(20) DEFAULT 'Toyota',  -- rövid szöveges info alapártelmezettem toyota                -- DEFAULT alapértelmezett érték      
    modell VARCHAR(20) NOT NULL,          -- NOT NULL az adott oszlopban nem szerepelhet NULL érték
    rendszam VARCHAR(10) UNIQUE,        -- UNIQUE nem szerepelhet két azonos érték egy oszlopban
    ajtok_szama INT CHECK (ajtok_szama < 6),           -- az ajtoknak kisebbnek kell lenie mint 6 
    gyartas_eve DATE
);






INSERT INTO szgk (id, tipus, modell, rendszam, ajtok_szama, gyartas_eve)         -- bővitjük az adatbázisunkat ezekkel az adatokkal
VALUES (10, 'OPEL','Corsa','ABC123',4,'2002-10-04');       -- bővitjük az adatbázisunkat ezekkel az adatokkal





