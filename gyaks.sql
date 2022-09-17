DROP DATABASE IF EXISTS muhely; -- vizsgál arra gogy van ilyen adatbázis ha van törli ha nincs akkor nincs akkor nem történik semmi
CREATE DATABASE muhely;
USE muhely;

CREATE TABLE szgk (
	id INT PRIMARY KEY AUTO_INCREMENT, -- integer
    tipus VARCHAR(20) DEFAULT 'Toyota',  -- rövid szöveges info
    modell VARCHAR(20) NOT NULL,
    rendszam VARCHAR(10) UNIQUE,
    ajtok_szama INT CHECK (ajtok_szama < 6),
    gyartas_eve DATE
);

INSERT INTO szgk (id, tipus, modell, rendszam, ajtok_szama, gyartas_eve)         -- bővitjük az adatbázisunkat ezekkel az adatokkal
VALUES (10, 'OPEL','Corsa','ABC123',4,'2002-10-04');       -- bővitjük az adatbázisunkat ezekkel az adatokkal





