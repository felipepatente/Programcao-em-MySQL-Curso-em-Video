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


INSERT INTO Produto(nome, descricao, qtdAtual) VALUES ('Fogão','Descrição do fogão', 60),
													  ('Caderno','Descrição do caderno', 80),
													  ('Caneta','Descrição da caneta', 120),
													  ('Bolsa','Descrição da bolsa', 10),
													  ('Computador','Descrição do computador', 30);




SELECT * FROM produto;
SELECT * FROM estoque;


SELECT SUM(qtdAtual) AS 'Total'
FROM produto;

SELECT nome, SUM(qtdAtual) AS 'Total'
FROM produto
GROUP BY nome;

SELECT AVG(qtdAtual) AS 'Média'
FROM Produto;

SELECT MIN(qtdAtual) AS 'Menor Valor'
FROM Produto;

SELECT MAX(qtdAtual) AS 'Maior Valor'
FROM Produto;


SELECT nome, descricao
FROM Produto
WHERE qtdAtual < (SELECT AVG(qtdMax)
				  FROM estoque);

UPDATE produto SET qtdAtual = 20 WHERE qtdAtual = 40;

DELETE FROM estoque WHERE idProduto = 5;


CREATE VIEW vw_ProdutoEstoque
AS
	SELECT nome, descricao, qtdAtual AS 'Qtd Atual', qtdMax AS 'Qtd Maximo'
	FROM Produto AS p
	INNER JOIN estoque AS e
	ON p.idProduto = e.idProduto


SELECT * FROM vw_ProdutoEstoque;


CREATE PROCEDURE pr_InserirProduto
(nome VARCHAR(20), descricao VARCHAR(50), qtdAtual INT)
	INSERT INTO produto (nome,descricao,qtdAtual) 
	VALUES (nome, descricao, qtdAtual);



CALL pr_InserirProduto('Caderno','Descrição',50);

SELECT * FROM produto;
SELECT * FROM estoque;








