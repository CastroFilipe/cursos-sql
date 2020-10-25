# Inserindo registros que serão utilizados nos exemplos a seguir. 
# Obs: Alguns registros estão com erros de digitação proposital.

INSERT INTO curso VALUES 
('1','HTML4','Curso de HTML5', '40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e ganhar inscritos','5','2','2018');

SELECT * FROM curso;

# Corrigindo as linhas com erros de digitação.

UPDATE CURSO 
SET nome = 'HTML5'
WHERE id = 1;

#Atualizando mais de um atributo do registro
UPDATE curso
SET nome = 'PHP', ano = '2015'
WHERE id = 4;

# Atualizando registro e colocando limitador para garantir que apenas uma linha será modificada.
UPDATE curso
SET nome = 'Java', carga = 40, ano = 2015
WHERE id = 5
LIMIT 1;

# DELETAR LINHAS

DELETE FROM CURSO
WHERE id = 8;

# Excluindo linhas 9 e 10
DELETE FROM CURSO
WHERE id IN ('9', '10')
LIMIT 2;
