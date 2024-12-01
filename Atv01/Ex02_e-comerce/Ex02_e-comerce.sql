CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    estoque INT NOT NULL,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO produtos (nome, categoria, estoque, preco)
VALUES
('Notebook Dell Inspiron', 'Eletrônicos', 10, 3500.00),
('Smartphone Samsung Galaxy', 'Eletrônicos', 15, 1500.00),
('Cadeira Gamer', 'Móveis', 8, 1200.00),
('Fone de Ouvido JBL', 'Eletrônicos', 25, 300.00),
('Mesa Escritório', 'Móveis', 5, 700.00),
('Teclado Mecânico', 'Acessórios', 12, 400.00),
('Monitor 24" LG', 'Eletrônicos', 6, 900.00),
('Mouse Gamer Logitech', 'Acessórios', 20, 250.00);

select * from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set estoque = 10 where id = 6;



