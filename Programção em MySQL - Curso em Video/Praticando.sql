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