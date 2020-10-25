USE cadastro;

#### SELECT parte 2 ####

#Selecionando por nome.
SELECT * FROM cursos 
WHERE nome = 'JAVA';

# Selecionando os registros com nomes que comecem com a letra 'P'
SELECT * FROM cursos 
WHERE nome LIKE 'p%' 
ORDER BY nome, ano;

# Selecionando registros que não contenham a letra A em qualquer parte do nome
SELECT nome, ano FROM cursos 
WHERE nome NOT LIKE '%a%';

# o Underline exige que exista algum conteúdo após o p final
SELECT nome, ano FROM cursos 
WHERE nome LIKE 'ph%p_';

#### SELECT DISTINCT ####
# Exibindo a nacionalidade dos gafanhotos
SELECT nacionalidade FROM gafanhotos;

# Exibindo apenas as ocorrências distintas. 
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

#### FUNÇÕES DE AGREGAÇÃO #####

# Exibe o número total de cursos cadastrados.
SELECT COUNT(*) FROM CURSOS;

# Exibe quantos cursos tem carga horária maior do que 40
SELECT COUNT(*) FROM CURSOS
WHERE carga > 40;

# Exibe quantos nomes existem. Não é necessário contar apenas usando o *
SELECT COUNT(nome) FROM CURSOS;

# Seleciona o maior valor
SELECT MAX(carga) FROM cursos;

# Seleciona o curso com maior número de aulas em 2016.
SELECT MAX(totaulas) FROM cursos WHERE ano = 2016;
SELECT * FROM cursos WHERE ano = 2016; # para conferir os cursos de 2016

# Seleciona o menor valor.
SELECT MIN(totaulas) FROM cursos;
SELECT nome, totaulas, ano FROM cursos ORDER BY totaulas; # para conferir

# Soma todos os valores
SELECT SUM(totaulas) FROM cursos WHERE ano BETWEEN 2010 AND 2014;
SELECT ano, nome, totaulas FROM cursos WHERE ano BETWEEN 2010 AND 2014 ORDER BY ano, nome; # para conferir.


