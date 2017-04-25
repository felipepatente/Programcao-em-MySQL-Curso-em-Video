-- Vai fazer a conta de quantos cursos tem com determinada carga
SELECT carga, COUNT(*)
FROM cursos
GROUP BY carga;


-- Vai fazer a conta de quantos cursos tem com determinada carga e que seja maior que 3
SELECT carga, COUNT(*)
FROM cursos
GROUP BY carga
HAVING COUNT(*) > 3;