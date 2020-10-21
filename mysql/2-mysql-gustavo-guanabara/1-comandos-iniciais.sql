/*
Curso de Mysql do canal do youtube "curso em video". 
Playlist do curso: https://www.youtube.com/playlist?list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r
*/

CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoa (
	nome varchar(30),
    idade tinyint,
    sexo char(1),
    peso float,
    nacionalidade varchar(20)
);

describe pessoa;