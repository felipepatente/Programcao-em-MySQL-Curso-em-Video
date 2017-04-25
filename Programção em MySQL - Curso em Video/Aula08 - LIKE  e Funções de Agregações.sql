SELECT *
FROM cursos
WHERE nome LIKE 'p%'; -- Vai selecionar todos os registros que começa com p (tanto faz se é minusculo ou maiusculo)


SELECT *
FROM cursos
WHERE nome LIKE '%p'; -- Vai selecionar todos os registros que termina com p (tanto faz se é minusculo ou maiusculo)


SELECT *
FROM cursos
WHERE nome LIKE 'p%'; -- Vai selecionar todos os registros que começa com p (tanto faz se é minusculo ou maiusculo)

SELECT *
FROM cursos
WHERE nome LIKE '%p%'; -- Vai selecionar todos os registros que tenha com p (tanto faz se é minusculo ou maiusculo)

SELECT *
FROM cursos
WHERE nome NOT LIKE 'p%'; -- Vai selecionar todos os registros que não tenha p (tanto faz se é minusculo ou maiusculo)


-- Vai selecionar todos os registros que começa com ph e que a penultima letra seja p e a ultima qualquer caractere
-- (tanto faz se é minusculo ou maiusculo)
SELECT *
FROM cursos
WHERE nome LIKE 'ph%p_'; 

-- Esse DISTINCT não vai deixar repetir valores na busca
SELECT DISTINCT carga
FROM cursos

-- Conta a quantidade de registros tem na tabela
SELECT COUNT(*)
FROM cursos

-- Seleciona o maior valor da coluna carga
SELECT MAX(carga) 
FROM cursos

-- Seleciona o menor valor da coluna carga
SELECT MIN(carga) 
FROM cursos

-- Faz o calculo da média da coluna carga
SELECT AVG(carga) 
FROM cursos

-- Faz a soma da coluna totaula, que obedeçe a clausula WHERE
SELECT SUM(totaula) 
FROM cursos
WHERE ano = 2016