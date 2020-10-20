/*Curso de mysql https://www.youtube.com/playlist?list=PLA9FYWyBXCEb__gEq76pWxSyoDNrsNorh*/

create database if not exists bd;

use bd;

create table if not exists pessoa (
	id bigint not null,
    nome varchar(50) not null,
    email varchar(50) not null
);

insert into pessoa (id, nome, email) values 
(1, "João", "joão@fakemail.com"),
(2, "Ana", "ana@fakemail.com"),
(3, "Alex", "alex@fakemail.com"),
(4, "Tayson", "tayson@fakemail.com"),
(5, "Renato", "renato@mymail.com"),
(6, "Sabrina", "sabrina@mymail.com");

select * from pessoa;
