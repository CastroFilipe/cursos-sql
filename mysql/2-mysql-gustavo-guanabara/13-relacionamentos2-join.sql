CREATE DATABASE IF NOT EXISTS faculdade
DEFAULT CHARACTER SET utf8mb4 
DEFAULT COLLATE utf8mb4_general_ci;

USE faculdade; 

CREATE TABLE IF NOT EXISTS aluno (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    nascimento DATE NOT NULL
) DEFAULT CHARSET =  utf8mb4;

CREATE TABLE IF NOT EXISTS curso (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    tot_aulas INT NOT NULL
) DEFAULT CHARSET =  utf8mb4;

CREATE TABLE IF NOT EXISTS aluno_curso (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_curso DATE NOT NULL,
    id_aluno INT,
    id_curso INT,
    
    UNIQUE (id_aluno, id_curso),
    
    FOREIGN KEY(id_aluno) REFERENCES aluno(id),
    FOREIGN KEY(id_curso)REFERENCES curso(id)
) DEFAULT CHARSET =  utf8mb4;

INSERT INTO aluno VALUES 
(DEFAULT, 'João', 'M', '2000-10-10'),
(DEFAULT, 'Jéssica', 'F', '1994-10-28'),
(DEFAULT, 'Pedro', 'M', '1991-02-21'),
(DEFAULT, 'Camila', 'F', '1985-07-14');

INSERT INTO curso VALUES
(DEFAULT, 'HTML5', 'Curso completo de Html5', 25),
(DEFAULT, 'CSS', 'Curso de estilização com CSS', 45),
(DEFAULT, 'Spring boot', 'Curso básico de Spring boot', 30),
(DEFAULT, 'Java', 'Java e orientação a objetos. Do básico ao intermediário', 60);

SELECT * FROM curso;
SELECT * FROM aluno;

INSERT INTO aluno_curso VALUES
(DEFAULT, '2018-07-20', 1, 4),
(DEFAULT, '2018-08-12', 1, 3),
(DEFAULT, '2018-08-20', 2, 1),
(DEFAULT, '2019-02-10', 2, 2),
(DEFAULT, '2019-04-15', 2, 3),
(DEFAULT, '2019-03-20', 3, 3),
(DEFAULT, '2020-11-28', 3, 4),
(DEFAULT, '2020-01-06', 4, 2);

SELECT * FROM aluno_curso;

SELECT a.id AS id_aluno, a.nome AS nome_aluno, ac.id_curso AS id_curso, ac.data_curso AS data_curso 
FROM aluno AS a
INNER JOIN aluno_curso AS ac
ON a.id = ac.id_aluno;

SELECT a.id AS id_aluno, a.nome AS nome_aluno, ac.id_curso AS id_curso, c.nome AS nome_curso, ac.data_curso AS data_curso 
FROM aluno AS a
INNER JOIN aluno_curso AS ac
ON a.id = ac.id_aluno
INNER JOIN curso c
ON c.id = ac.id_curso;