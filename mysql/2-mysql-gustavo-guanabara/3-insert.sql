INSERT INTO pessoa
(nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUES 
('Renato','1994-04-05','M','80.5','1.75','brasileira');

INSERT INTO pessoa VALUES 
('2', 'Maria','1984-11-07','F','62.5','1.6', 'portuguesa'),
(DEFAULT, 'Falcão','1987-10-21','M','70.0','1.72', 'Argentina'),
(DEFAULT, 'Valéria','1991-11-28','F','69.5','1.73', DEFAULT);

select * from pessoa;

#Delete from pessoa where id in ('1','2','3','4','5','6','7','8');