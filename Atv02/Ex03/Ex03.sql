CREATE DATABASE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos farmacêuticos de uso controlado e livre'),
('Cosméticos', 'Produtos para cuidados com a pele, cabelo e estética'),
('Suplementos', 'Produtos para nutrição e suplementação'),
('Higiene', 'Produtos para higiene pessoal e cuidados diários'),
('Infantil', 'Produtos voltados ao cuidado e bem-estar infantil');

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
('Dipirona', 'Analgésico e antitérmico', 12.50, 100, 1),
('Paracetamol', 'Medicamento para febre e dor', 8.90, 150, 1),
('Protetor Solar', 'Protetor solar FPS 50', 75.00, 50, 2),
('Shampoo', 'Shampoo hidratante para cabelo seco', 25.00, 60, 2),
('Whey Protein', 'Suplemento proteico para musculação', 150.00, 30, 3),
('Sabonete Líquido', 'Sabonete líquido com aroma de lavanda', 18.00, 200, 4),
('Fralda Infantil', 'Fralda descartável tamanho M', 50.00, 80, 5),
('Creme Hidratante', 'Creme hidratante para pele seca', 60.00, 40, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria WHERE c.nome = 'Cosméticos';