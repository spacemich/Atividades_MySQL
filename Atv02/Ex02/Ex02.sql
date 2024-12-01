CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(6, 2) NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES
('Tradicional', 'Sabores clássicos e populares.'),
('Especial', 'Sabores exclusivos e diferenciados.'),
('Vegetariana', 'Opções sem carne e com vegetais.'),
('Doce', 'Pizzas com ingredientes doces.'),
('Premium', 'Ingredientes sofisticados e de alta qualidade.');

INSERT INTO tb_pizzas (nome, tamanho, preco, categoria_id)
VALUES
('Calabresa', 'Média', 45.50, 1),
('Margherita', 'Grande', 55.00, 1),
('Quatro Queijos', 'Média', 65.00, 2),
('Brigadeiro', 'Pequena', 40.00, 4),
('Chocolate com Morango', 'Média', 50.00, 4),
('Vegetariana Especial', 'Grande', 70.00, 3),
('Frango com Catupiry', 'Grande', 60.00, 2),
('Trufada Premium', 'Grande', 95.00, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT 
    p.id AS pizza_id,
    p.nome AS pizza_nome,
    p.tamanho,
    p.preco,
    c.nome,
    c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT 
    p.id AS pizza_id,
    p.nome AS pizza_nome,
    p.tamanho,
    p.preco,
    c.nome,
    c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.nome = 'Doce';




