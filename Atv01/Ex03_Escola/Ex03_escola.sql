CREATE DATABASE escola;

CREATE TABLE estudantes (
    id INT NOT NULL AUTO_INCREMENT,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(50) NOT NULL,
    nota DECIMAL(4, 2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO estudantes (matricula, nome, idade, turma, nota)
VALUES
('0011', 'Ana Souza', 14, '6º A', 8.5),
('0045', 'Carlos Lima', 15, '9º B', 6.0),
('0023', 'Beatriz Rocha', 13, '7º A', 9.0),
('0084', 'Daniel Alves', 14, '8º B', 5.5),
('0012', 'Eduarda Mendes', 15, '5º A', 7.5),
('0065', 'Fernando Silva', 14, '2º B', 6.5),
('0037', 'Gabriela Santos', 13, '1º A', 7.8),
('0042', 'Henrique Oliveira', 14, '8º B', 8.0);

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 7.2 WHERE matricula = '0045';





