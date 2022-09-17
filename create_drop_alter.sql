DROP DATABASE IF EXISTS muhely; -- vizsgál arra gogy van ilyen adatbázis ha van törli ha nincs akkor nincs akkor nem történik semmi
CREATE DATABASE muhely;
USE muhely;

CREATE TABLE szgk (
	id INT, -- integer
    tipus VARCHAR(20),  -- rövid szöveges info
    modell VARCHAR(20),
    rendszam VARCHAR(10),
    ajtok_szama INT,
    gyartas_eve DATE
);

