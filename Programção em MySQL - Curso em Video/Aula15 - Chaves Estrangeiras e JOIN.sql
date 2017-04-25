ALTER TABLE gafanhotos ADD COLUMN cursopreferido INT;

ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);

UPDATE gafanhotos SET cursopreferido = '6' WHERE id = '1';

SELECT gafanhotos.nome, cursos.nome
FROM gafanhotos
INNER JOIN cursos
ON gafanhotos.id = cursos.idcurso;