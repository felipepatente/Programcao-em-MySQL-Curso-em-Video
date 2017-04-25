--Excluindo o banco de dados (cadastro é o nome do banco)
DROP DATABASE cadastro;

--Criando uma banco de dados mais caprichado (com padrões de escritas)
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

--Crianção de tabela
CREATE TABLE pessoas(

	id INT NOT NULL AUTO_INCREMENT, -- Esse auto_increment, cada vez que eu colocar um dado acrescenta + 1 (1,2,3)
	nome VARCHAR(30) NOT NULL,
	nascimento DATE,
    sexo ENUM('M','F'),
    peso DECIMAL(5,2), -- 102.25
    altura DECIMAL(3,2), -- 1.95
	nacionalidade VARCHAR(20) DEFAULT 'Brasil', -- Se não for digitado nada, vai "Brasil" para o banco
	PRIMARY KEY (id) -- Definindo a chave primaria
	
) DEFAULT CHARSET = utf8; 