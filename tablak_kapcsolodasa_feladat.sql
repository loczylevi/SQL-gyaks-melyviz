/*1. Feladat
A CREATE, DROP, ALTER című lecke kódjában található 'muhely' adatbazist egeszitsd ki egy az autótulajdonosok adatait tároló táblával!
A két táblát kapcsold össze, úgy hogy a most létrehozott tábla legyen a gyermektábla! A táblákat töltsd fel néhány adattal!*/


/*1. Feladat
A CREATE, DROP, ALTER című lecke kódjában található 'muhely' adatbazist egeszitsd ki egy az autótulajdonosok adatait tároló táblával!
A két táblát kapcsold össze, úgy hogy a most létrehozott tábla legyen a gyermektábla! A táblákat töltsd fel néhány adattal!*/


DROP DATABASE IF EXISTS muhely;
CREATE DATABASE muhely;
USE muhely;
  
DROP TABLE IF EXISTS szgk;
  
CREATE TABLE szgk(
      id INT, 
      tipus VARCHAR(20), 
      modell VARCHAR(20), 
      rendszam VARCHAR(15), 
      ajtok_szama INT,
      gyartas_eve DATE,
      PRIMARY KEY (id)
);

CREATE TABLE autótulajdonosok(
      nev VARCHAR(30), 
      telefonszám INT, 
      születési_ido DATE, 
      id INT,
      azonnosito_szama INT,
      egyeb_infok VARCHAR(300),
      FOREIGN KEY (id) REFERENCES szgk (id)
);
  
INSERT INTO szgk (id, tipus, modell, rendszam, ajtok_szama, gyartas_eve)
VALUES(10, 'Opel', 'Corsa C', 'AAA123', 4, '2002-10-03'); 

INSERT INTO autótulajdonosok (nev, telefonszám, születési_ido, id, azonnosito_szama, egyeb_infok)
VALUES('Lóczy Lajos', 765757578, '2003-06-26', 10, 111, 'Szeretek aludni'); 
