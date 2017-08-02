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

ALTER TABLE estoque ADD CONSTRAINT fk_Estoque FOREIGN KEY (idProduto) REFERENCES produto (idProduto) ;

SELECT * FROM produto;
SELECT * FROM estoque;


DELIMITER $$
CREATE TRIGGER tr_InserirQuantidade BEFORE INSERT
ON produto
FOR EACH ROW

BEGIN
	
	DECLARE @id INT
	DECLARE @qtdAtual INT

	SELECT @id = idProduto, @qtdAtual = qtdAtual FROM inserted

	INSERT INTO estoque (idProduto, qtdMax) VALUES (@id, @qtdAtual * 2);
    
END
DELIMITER;



DELIMITER $$
CREATE TRIGGER antesDeUpdate_empregados 
BEFORE UPDATE ON empregados
FOR EACH ROW BEGIN
INSERT INTO empregados_auditoria
SET acao = 'update',
id_empregado = OLD.id_empregado,
sobrenome = OLD.sobrenome,
modificadoem = NOW(); END$$
DELIMITER ;


















