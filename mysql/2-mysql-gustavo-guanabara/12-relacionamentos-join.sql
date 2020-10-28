# Relacionamentos e chaves estrangeiras

CREATE TABLE IF NOT EXISTS curso (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS aluno (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    profissao VARCHAR(60) NOT NULL,
    nascimento DATE NOT NULL,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(40),
    id_curso INT,
    
    FOREIGN KEY(id_curso) REFERENCES curso(id)
) DEFAULT CHARSET = utf8mb4;

INSERT INTO curso VALUES 
(DEFAULT, 'html'),
(DEFAULT, 'css'),
(DEFAULT, 'javascript'),
(DEFAULT, 'php'),
(DEFAULT, 'JAVA');

SELECT * FROM curso;

INSERT INTO aluno VALUES
(DEFAULT, 'Filipe', 'Programador', '1992-07-12', 'M', 85.5, 1.77, 'brasileira', 3),
(DEFAULT, 'Aline', 'RH', '1999-08-22', 'F', 65.5, 1.70, 'brasileira', 3),
(DEFAULT, 'Jorge', 'Comerciante', '2000-10-11', 'M', 90.0, 1.80, 'americano', 1),
(DEFAULT, 'Gabriel', 'Empresário', '1986-01-12', 'M', 77.8, 1.70, 'argentina', 1),
(DEFAULT, 'Samia', 'Vendedora', '1997-04-03', 'F', 72.0, 1.77, 'argentina', 2),
(DEFAULT, 'Pamela', 'Atendente', '1998-05-05', 'F', 70.0, 1.66, 'Portuguesa', null),
(DEFAULT, 'Pirlo', 'Futebolista', '1985-04-03', 'M', 72.0, 1.77, 'Italia', null);

SELECT * FROM aluno;
DESCRIBE aluno;

/*
	O INNER JOIN recupera os alunos e os dados de seus cursos favoritos, fazendo uma junção.
    Os alunos que não possuem um curso escolhido não são retornados no Inner Join devido a cláusula ON.
    Para retornar inclusive os alunos que não escolheram qualquer curso, usar LEFT OUTER JOIN ou RIGHT OUTER JOIN
*/
SELECT * FROM aluno JOIN curso
ON aluno.id_curso = curso.id
ORDER BY aluno.id;

SELECT aluno.id, aluno.nome, profissao, curso.nome AS 'curso favorito' FROM aluno
INNER JOIN curso
ON aluno.id_curso = curso.id
ORDER BY aluno.nome;

# Com alias para simplificar código
SELECT a.nome, a.profissao, c.nome AS 'curso favorito' FROM aluno AS a
INNER JOIN curso AS c
ON a.id_curso = c.id
ORDER BY a.nome;

/*
	LEFT OUTER JOIN.
    A tabela aluno foi declarada a esquerda da cláusula JOIN e a tabela curso foi declarada a direita.
    O LEFT indica utilizar a tabela a esquerda(aluno) para fazer a junção, assim serão retornados 
    alunos que não possuem nenhum curso de preferência.alter
    Se utilizarmos o RIGHT OUTER JOIN serão retornados cursos que não possuem nenhuma referência por algum aluno.
    
*/
# left retornará alunos que não possuem referencias a cursos.
SELECT aluno.nome, aluno.profissao, curso.nome 
FROM aluno LEFT OUTER JOIN curso 
ON aluno.id_curso = curso.id;

# right retornará cursos que não são referênciados por alunos(cursos que não foram escolhidos).
SELECT aluno.nome, aluno.profissao, curso.nome 
FROM aluno RIGHT OUTER JOIN curso 
ON aluno.id_curso = curso.id;