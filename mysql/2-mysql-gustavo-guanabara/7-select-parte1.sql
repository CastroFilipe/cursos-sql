USE cadastro;

SHOW TABLES;

Select * from gafanhotos;
select * from cursos;

##### COMANDO SELECT #####

# Ordenando registro com ORDE BY
SELECT * FROM cursos ORDER BY nome DESC;

# Selecionando colunas especificas
SELECT ano, nome, carga FROM cursos ORDER BY ano, nome ASC;

# Selecionando linhas especificas com WHERE
SELECT ano, nome, carga FROM cursos 
WHERE ano <= 2016
ORDER BY ano, nome;

# Selecionando intervalos com BETWEEN
SELECT ano, nome, descricao FROM cursos 
WHERE ano BETWEEN 2016 AND 2018 
ORDER BY ano DESC, nome;

# Selecionando através de faixa de valores ou arrays.
SELECT ano, nome, descricao FROM cursos 
WHERE nome IN ('hardware', 'SEO', 'MySql', 'Word')
ORDER BY ano DESC;

# Selecionando com mais de um operador lógico
SELECT * FROM cursos 
WHERE ano > 2017 and carga >= 30
ORDER BY nome;