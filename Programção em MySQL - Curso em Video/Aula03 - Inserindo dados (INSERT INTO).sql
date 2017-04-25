-- Inserindo valores na tabela pessoa
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo','1984-01-02','M','78.5','1.83','Brasil');


-- Inserindo valores de forma diferente do de cima
INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Creuza','1920-12-30','F','50.2','1.65', DEFAULT);
-- Como o valor de id esta como auto_incremento eu posso colocar DEFAULT. E no caso do país na hora da contrução
-- da tabela foi colocado como DEFAULT o campo país, por isso é opcional esse valor

-- Inserindo valores de outra forma diferente
INSERT INTO pessoas VALUES
(DEFAULT, 'Adalgiza','1930-11-02','F','63.2','1.75', 'Irlanda'); 


-- Inserindo varios valores ao mesmo tempo
INSERT INTO pessoas 
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Ana','1975-12-22','F','52.3','1.45', 'EUA'),
(DEFAULT, 'Pedro','2000-07-15','M','52.3','1.45', 'Brasil'),
(DEFAULT, 'Maria','1999-05-30','F','75.9','1.70', 'Portugual');