CREATE DATABASE `db_generation_game_online`

CREATE TABLE `tb_classes` (
  `id_classes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_classes`)
)

CREATE TABLE tb_personagens (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id_classes)
);


INSERT INTO tb_classes (nome, descricao)
VALUES
('Guerreiro', 'Especializado em combate corpo a corpo, com alta resistência.'),
('Mago', 'Usa magia poderosa para atacar à distância e conjurar feitiços.'),
('Arqueiro', 'Especialista em ataques à distância com alta precisão.'),
('Assassino', 'Movimentos furtivos e ataques rápidos e mortais.'),
('Paladino', 'Combina habilidades de combate e magia para suporte.');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id)
VALUES
('Arthur', 20, 2500, 1500, 1),
('Merlin', 18, 3000, 800, 2),
('Legolas', 22, 2300, 1200, 3),
('Kassandra', 19, 2800, 900, 4),
('Lancelot', 21, 2000, 1800, 1),
('Gandalf', 25, 3500, 700, 2),
('Robin', 17, 2200, 1000, 3),
('Diana', 23, 2400, 1400, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT 
    p.id AS personagem_id, 
    p.nome AS personagem_nome, 
    p.nivel, 
    p.poder_ataque, 
    p.poder_defesa, 
    c.nome, 
    c.descricao 
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id_classes;

SELECT 
    p.id AS personagem_id, 
    p.nome AS personagem_nome, 
    p.nivel, 
    p.poder_ataque, 
    p.poder_defesa, 
    c.nome, 
    c.descricao 
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id_classes
WHERE c.nome = 'Arqueiro';





