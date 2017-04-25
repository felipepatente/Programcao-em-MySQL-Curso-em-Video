-- Inserindo valores (varios de uma vez)
INSERT INTO cursos VALUES
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução a Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','40','30','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar Polêmica e ganhar inscritos','5','2','2018');


-- Atualiza o valor de uma linha da tabela
UPDATE cursos -- Nome da tabela
SET nome = 'HTML5' -- Nome do campo e seu valor a ser modificado
WHERE idcurso = '1'; -- Só vai ser mudado a linha com o idcurso = 1

-- Faz a mesma coisa que o codigo de cima, só que altera dois valores ao mesmo tempo
UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

-- Faz a mesma coisa que o codigo de cima, só que altera três valores ao mesmo tempo
UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
LIMIT 1; -- Limita a mudança somente a uma linha

-- Excluindo uma linha da tabela cursos
DELETE from cursos
WHERE idcurso = '8';

-- Apaga todos os registro de uma tabela
TRUNCATE TABLE cursos;
