12. feladat

CREATE DATABASE cukraszda
CHARACTER SET utf8
COLLATE utf8_hungarian_ci

13. feladat

adatbazis.sql

14. feladat

SELECT COUNT(id) AS "Hiányzó kalória érték" FROM `termek` 
WHERE kaloria IS NULL;

15. feladat

SELECT termek.nev, kiszereles.mennyiseg FROM `termek` 
JOIN kiszereles ON kiszereles.id = termek.id
WHERE kiszereles.mennyiseg LIKE "%g";

16. feladat

UPDATE `termek` 
SET ar = 1350
WHERE termek.nev = "Eklerfánk";

17. feladat

SELECT allergen.nev, COUNT(*) AS "termék szám" 
FROM allergen
INNER JOIN allergeninfo ON allergen.id = allergeninfo.allergenId	
GROUP BY allergen.nev
ORDER BY COUNT(*) DESC
LIMIT 3;

18. feladat

SELECT termek.nev, termek.ar FROM `termek`
JOIN allergeninfo ON allergeninfo.termekId = termek.id
JOIN allergen ON allergeninfo.allergenId = allergen.id
WHERE termek.laktozmentes AND termek.tojasmentes AND tejmentes = 1;

19. feladat

SELECT CONCAT(termek.nev, 'torta') AS "torta neve", termek.ar AS "fizetendő ár" FROM `termek`
WHERE termek.nev LIKE "paleo%";