# Descreve a estrutura da tabela
DESC pessoa;

SELECT * FROM pessoa;

# Adciona uma coluna a tablea espefcificada. A coluna será adicionada na última posição da tabela.
ALTER TABLE pessoa 
ADD COLUMN profissao VARCHAR(10);

# Excluir uma coluna
ALTER TABLE pessoa 
DROP COLUMN profissao;

# adiciona uma coluna em determinada posição(após o nome)
ALTER TABLE pessoa 
ADD COLUMN profissao VARCHAR(10)
AFTER nome;

# adiciona uma coluna na primeira posição.
ALTER TABLE pessoa 
ADD COLUMN cargo VARCHAR(10)
FIRST;

# Modifica uma coluna existente. Abaixo alocaremos mais espaço para a coluna profissao e adicionaremos a constraint not null.
/*
Abaixo irá gerar um erro pois a tabela pessoa já continha registros quando a coluna profissao foi criada. 
Como a coluna profissao foi criada sem o NOT NULL, o valor NULL foi adicionado a coluna para cada um dos registros 
já existentes. 
O comando abaixo irá modificar a coluna e adicionar o NOT NULL, que irá gerar um erro pois já existem valores nulos na coluna.
Solução: Fazer um update para cada um dos registros, definindo um valor padrão para a coluna profissao.
*/
/* # Vai gerar o erro. Fazer o update antes de executar esse código.
ALTER TABLE pessoa 
MODIFY COLUMN profissao VARCHAR(60) NOT NULL DEFAULT '';
*/

# necessário remover o safe mode para que seja possível atualizar todos os registros sem a cláusula WHERE.
SET SQL_SAFE_UPDATES = 0; 

# o Comando irá retirar os valores nulos da coluna profissao
UPDATE pessoa SET profissao = '';

# Agora sim podemos atualizar a coluna profissao com o NOT NULL
ALTER TABLE pessoa 
MODIFY COLUMN profissao VARCHAR(60) NOT NULL DEFAULT '';

# Renomeando a tabela de pessoa para cliente.
ALTER TABLE pessoa 
RENAME TO cliente;

# melhor colocar de volta para não ter que atualizar os outros comandos. :)
ALTER TABLE cliente 
RENAME TO pessoa;

# CRIANDO UMA NOVA TABELA PARA OS PRÓXIMOS EXEMPLOS

/*
- Algumas explicações do comando abaixo.
UNSIGNED impede que valores negativos sejam inseridos, isso economiza 1 byte de dados para 
cada registro, esse byte seria utilizado para guardar o sinal positivo ou negativo.

UNIQUE garante que não exista repetição de registros. No comando abaixo o 
nome do curso deve ser único.

SMALLINT possuí o tamanho padrão de -32768 a 32767
TINYINT possuí o tamanho padrão de -128 a 127
*/
CREATE TABLE IF NOT EXISTS curso (
    nome VARCHAR(30) NOT NULL UNIQUE, /*UNIQU*/
    descricao TEXT NOT NULL,
    carga SMALLINT UNSIGNED NOT NULL, /*de -32768 a 32767*/
    tot_aulas TINYINT UNSIGNED, /* de -128 a 127*/
    ano YEAR NOT NULL
) DEFAULT CHARSET = utf8mb4;

# Adicionando o id que não foi definido na criação da tabela curso.
ALTER TABLE curso 
ADD COLUMN id INT FIRST;

# Só é possível definir a chave primaria após a criaçãod a coluna.
ALTER TABLE curso 
ADD PRIMARY KEY(id);

DESC curso;
SELECT * FROM curso;

