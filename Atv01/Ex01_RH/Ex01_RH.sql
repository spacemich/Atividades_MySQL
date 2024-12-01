CREATE DATABASE `atv1_rh`

CREATE TABLE `colaboradores` (
   `id` int NOT NULL AUTO_INCREMENT,
   `nome` varchar(100) DEFAULT NULL,
   `cargo` varchar(45) DEFAULT NULL,
   `matricula` varchar(45) DEFAULT NULL,
   `filial` varchar(45) DEFAULT NULL,
   `salario` decimal(10,0) DEFAULT NULL,
   PRIMARY KEY (`id`)
);

INSERT INTO `colaboradores` (`nome`, `cargo`, `matricula`, `filial`, `salario`)
VALUES
('Julio', 'Analista', '003', 'São Paulo', 4500),
('Ricardo', 'Analista Sr', '008', 'São Paulo', 6500),
('Nicolas', 'Estagiário', '010', 'São Paulo', 1500),
('José', 'Coordenador', '002', 'Curitiba', 8500),
('Eduardo', 'Gerente', '007', 'São Paulo', 12000);

select * from colaboradores where salario < 2000;

select * from colaboradores where salario < 2000;

update colaboradores set salario = 4600 where id = 1;