--Criação do banco de dados
CREATE DATABASE cadastro;

--Criação de tabelas
CREATE TABLE pessoas (
	
    nome VARCHAR(30),
    idade TINYINT,
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
);

--Vai descrever a tabela pessoas (nomes dos campos, tipos do mesmos)
DESCRIBE pessoas

