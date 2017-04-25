-- Alterando a tabela pessoas e colocando um novo campo "profissao"
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

-- Apagando uma coluna da tabela
ALTER TABLE pessoas
DROP COLUMN profissao;

-- Adicionando uma coluna (profissao) depois da coluna nome 
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Adicionando a coluna codigo na primeira posição. OBs: a palavra reserva "COLUMN" é opcional
ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

-- Alterando uma coluna (profissao)
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20);

-- Alterando o nome da coluna (Tambem é possivel mudar os parametros)
ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

-- Alterando o nome da tabela
ALTER TABLE pessoas
RENAME TO gafanhtos;

-- Criando uma nova tabela
CREATE TABLE IF NOT EXISTS cursos (
	idcurso INT,
    nome VARCHAR(30) NOT NULL UNIQUE,
	descricao TEXT, -- O tipo TEXT aceita qualquer tipo de texto, com paragrafos, pontos , virgulas etc..
    carga INT UNSIGNED, -- O tipo UNSIGNED não aceita números com sinais negativo
    totaula INT UNSIGNED, -- O tipo UNSIGNED não aceita números com sinais negativo
    ano YEAR DEFAULT '2016' -- Se não for digitado nada, vai 2016 para o banco
	
) DEFAULT CHARSET=utf8;

-- Adicionando uma chave primaria em uma tabela que já esta pronta
ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

-- Apaga uma tabela
DROP TABLE teste;

