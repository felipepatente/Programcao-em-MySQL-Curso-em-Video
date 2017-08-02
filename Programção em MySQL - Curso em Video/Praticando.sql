CREATE DATABASE CadastroProdutos;

USE CadastroProdutos;

CREATE TABLE Produto(
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(20) NOT NULL,
	descricao VARCHAR(50) NOT NULL,
	qtdAtual INT NOT NULL
);

CREATE TABLE estoque(
	idEstoque INT AUTO_INCREMENT PRIMARY KEY,
	idProduto INT NOT NULL,
	qtdMax INT NOT NULL
);

ALTER TABLE estoque ADD CONSTRAINT fk_Estoque FOREIGN KEY (idProduto) REFERENCES produto (idProduto);

SELECT * FROM produto;
SELECT * FROM estoque;


CREATE TRIGGER tr_InserirQuantidade AFTER INSERT
ON Produto
FOR EACH ROW
INSERT INTO estoque (idEstoque, idProduto, qtdMax) VALUES (DEFAULT, new.idProduto, new.qtdAtual * 2);


DROP TRIGGER tr_InserirQuantidade;

INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Vasssoura','Descrição da vassoura', 20);
INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Mesa','Descrição da mesa', 40);
INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Fogão','Descrição do fogão', 60);
INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Caderno','Descrição do caderno', 80);
INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Caneta','Descrição da caneta', 120);
INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Bolsa','Descrição da bolsa', 10);
INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Computador','Descrição do computador', 30);




SELECT * FROM produto;
SELECT * FROM estoque;




