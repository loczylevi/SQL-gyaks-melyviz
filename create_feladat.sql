/*1. Feladat
Az alábbi feladatot egy SQL szkript formájában valósítsd meg!
Hozd létre el egy kutyamenhely adatbázisát és annak egy tábláját, amely a kutyák adatait tárolja az alábbi oszlopokban:
- id: (azonosító), elsődleges kulcs, automatikus számozású
- nev: nem lehet NULL
- kor: értéke nem lehet több, mint 30
- nem: alapértelemezett érték: 'kan'
- megjegyzes: max. 500 karakter

A táblában rögzíts minimum 2 rekordot!*/


DROP DATABASE IF EXISTS kutyamenhely; 
CREATE DATABASE kutyamenhely;
USE kutyamenhely;

CREATE TABLE kutya (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nev VARCHAR(20) NOT NULL,       
    kor INT CHECK (kor < 30),          
    nem VARCHAR(20) DEFAULT 'kan',       
    megjegyzes VARCHAR(500)      -- itt már nem kell vessző fuuuuuuuuuuuuuuuuuuuu

);


INSERT INTO kutya (id,nev,kor,nem,megjegyzes)
VALUES (11, "Buksi", 18,"szuka","Utálja a gumicsontot, minden fajta rovart megeszik különösen a darazsat de ugye egy gond van hogy a darázs megcsipi szerencsétlen torkát, száját és feldagad. Szájábol ne vegyél ki semmit ha jót akarsz magadnak. Chipezve, orvosilag elimert fajtiszta puli kutya. Kasztrált.");

INSERT INTO kutya (id,nev,kor,nem,megjegyzes)
VALUES (12, "Bodza", 7,"kan","Hiperaktiv kutya nem lehet magára hagyni 2 óránál többet. Nem szobatiszta. Ivarérett keverék kutya. Nincs Chipezve de orvosilag vizsgált kutya. Sajnos nem kasztrált igy néha eléggé kibirhatatlan. Kedvenc elfoglaltsága székek felboritása");
