#### DESAFIOS PROPOSTOS ####
/*
1) Uma lista com o nome de todos os gafanhotos Mulheres.
2) Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.
3) Uma lista com o nome de todos os homens que trabalham como programadores.
4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.
6) Qual é a maior altura entre gafanhotos Homens que moram no Brasil?
7) Qual é a média de peso dos gafanhotos cadastrados?
8) Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
9) Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?
*/

USE CADASTRO;

# Para visualizar a base de dados do desafio
SELECT * FROM gafanhotos;

# 1) Uma lista com o nome de todos os gafanhotos Mulheres.
SELECT nome FROM gafanhotos 
WHERE sexo = 'F'
ORDER BY nome;

# 2) Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2001 e 31/Dez/2015.
SELECT nome, nascimento FROM gafanhotos 
WHERE nascimento BETWEEN '2001-01-01' AND '2015-12-31'
ORDER BY nascimento, nome;

# 3) Uma lista com o nome de todos os homens que trabalham como programadores.
SELECT nome FROM gafanhotos 
WHERE sexo = 'M' AND profissao LIKE 'programador' 
ORDER BY nome;

# 4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
SELECT * FROM gafanhotos 
WHERE sexo = 'F' AND nacionalidade = 'brasil' AND nome LIKE 'j%';

# 5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.
SELECT nome, nacionalidade FROM gafanhotos 
WHERE sexo = 'M' AND nome LIKE '%silva%' AND nacionalidade <> 'brasil' AND peso < 100.00 
ORDER BY nome;

# 6) Qual é a maior altura entre gafanhotos Homens que moram no Brasil?
SELECT MAX(altura) FROM gafanhotos 
WHERE sexo = 'M' AND nacionalidade = 'brasil';

# 7) Qual é a média de peso dos gafanhotos cadastrados?
SELECT AVG(peso) FROM gafanhotos;

# 8) Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
SELECT MIN(peso) FROM gafanhotos 
WHERE sexo = 'F' 
AND nacionalidade != 'brasil' 
AND nascimento BETWEEN '1990-01-01' AND '2000-12-31';

# Para conferir o Desafio 8
SELECT peso, nascimento, nome, nacionalidade FROM gafanhotos 
WHERE nacionalidade <> 'brasil' AND sexo = 'F' ORDER BY peso, nascimento;

# 9) Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?
SELECT COUNT(*) FROM gafanhotos 
WHERE sexo = 'F' AND altura > 1.90;

# Parar conferir o desafio 9
SELECT nome, sexo, altura FROM gafanhotos 
WHERE sexo = 'F' AND altura > 1.90;