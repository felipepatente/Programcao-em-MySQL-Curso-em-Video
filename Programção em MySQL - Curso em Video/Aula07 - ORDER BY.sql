
SELECT * 
FROM cursos
ORDER BY nome; -- Vai trazer a seleção ordenado pela coluna nome

SELECT * 
FROM cursos
ORDER BY nome DESC; -- Mesma coisa que a de cima, só que ordena ao contrario


SELECT carga, ano, nome
FROM cursos
ORDER BY ano, nome; -- Primeiro ordena a coluna ano, depois a coluna nome 


SELECT *
FROM cursos
WHERE ano = 2016 -- Seleciona as linhas que tem o valor 2016
ORDER BY nome; -- Ordena pela coluna nome