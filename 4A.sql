SELECT * FROM hero;

SELECT r.name, h.name, h.deskripsi
FROM role AS r 
JOIN hero AS h 
ON h.id_role = r.id;

SELECT deskripsi 
FROM hero
WHERE id = 3;



