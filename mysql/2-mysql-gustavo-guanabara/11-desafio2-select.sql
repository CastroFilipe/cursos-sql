/*
EXERCÍCIOS
1) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
2) Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005
3) Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade.
4) Uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.
*/

# 1) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
SELECT profissao, count(profissao) AS num_profissionais FROM gafanhotos 
GROUP BY profissao 
ORDER BY num_profissionais;

# 2) Quantos gafanhotos homens e quantas mulheres nasceram após 01/jan/2005
SELECT sexo, count(sexo) AS quantidade FROM gafanhotos 
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

# 3) 
SELECT nacionalidade, count(nacionalidade) AS quantidade FROM gafanhotos
WHERE nacionalidade <> 'brasil' 
GROUP BY nacionalidade
HAVING quantidade >= 3
ORDER BY quantidade DESC;

# 4)
SELECT altura, count(altura) AS quantidade_pessoas FROM gafanhotos
WHERE peso > 100 
GROUP BY altura 
HAVING altura > (SELECT avg(altura) from gafanhotos);
