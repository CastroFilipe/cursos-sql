USE cadastro;

# recupera os registros distintos
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

# agrupa os registros
SELECT nacionalidade, count(nacionalidade) AS quantidade FROM gafanhotos 
GROUP BY nacionalidade;

# prova real. Deve retornar 3 registros com nacionalidade 'irlanda'
SELECT nome, nacionalidade FROM gafanhotos
WHERE nacionalidade = 'irlanda';

# filtrando resultados com HAVING. O HAVING para o GROUP BY funciona de forma semelhante ao WHERE para o SELECT
SELECT carga, COUNT(nome) AS quantidade_cursos FROM cursos 
GROUP BY carga 
HAVING COUNT(nome) >= 5;

SELECT * FROM CURSOS;

SELECT ano, carga, count(carga) AS quantidade FROM cursos 
WHERE ano BETWEEN 2015 AND 2017
GROUP BY ano 
HAVING COUNT(ano) >= 4;

# Exibe a carga de cursos ministrados depois de 2015, agrupados por carga e desde que a carga seja maior que a média de cargas dos cursos.
SELECT carga, count(nome) FROM cursos 
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT avg(carga) FROM cursos);