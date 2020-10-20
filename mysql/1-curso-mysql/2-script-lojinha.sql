create database if not exists loja;

use loja;

create table if not exists cliente ( 
	id bigint primary key,
    nome varchar(70) not null,
    email varchar(70) not null unique,
    telefone varchar(70) unique,
    endereco varchar(150)
);

create table if not exists estados ( 
	id bigint primary key,
    nome varchar(70) not null unique,
    sigla varchar(2) not null unique
);

insert into cliente values 
(1, "João", "joao@fakemail.com", "91 9999-9999", "Passagem do Carmo"),
(2, "Pedro", "pedro@fakemail.com", "11 9999-0000", "Rua abc"),
(3, "Ana", "ana@fakemail.com", "21 9999-9999", "Passagem da luz"),
(4, "Roberto", "roberto@fakemail.com", "21 9999-00000", "Passagem do Carmo"),
(5, "Pedro", "pedro@mymail.com", "91 0000-9999", "Av. Jamaica"),
(6, "Camila", "camila@mymail.com", "33 0000-9999", "Visconde de sabugosa"),
(7, "Filipe", "filipe@mymail.com", "33 9999-0000", "Passagem do Carmo"),
(8, "Janaina", "janaina@janaina.com", "44 9999-9999", "Passagem do Carmo"),
(9, "Renata", "renata@renata.com", "91 0000-0000", "Rua abc"),
(10, "Maria", "maria@maria.com", "55 0000-0000", "Av. Jamaica"),
(11, "Juliana", "juliana@mysql.com", "88 9999-9999", "Passagem do Carmo"),
(12, "Dolores", "dolores@mysql.com", "88 0000-9999", "Av. Jamaica"),
(13, "Armenio", "armenio@mysql.com", "99 0000-0000", "Visconde de sabugosa"),
(14, "Tiago", "tiago@empresa.com", "95 0000-9999", "Visconde de sabugosa"),
(15, "Rebeca", "rebeca@empresa.com", "76 0099-0099", "Av. Jamaica"),
(16, "Rebeca", "rebeca@meudominio.com", "76 9090-0909", "Passagem do Carmo"),
(17, "Felipe", "felipe@empresa.com", "91 9000-0000", "Passagem do Carmo"),
(18, "João", "joao@meudominio.com", "56 0000-9999", "Av. Jamaica"),
(19, "Renato", "renato@meudominio.com", "00 9999-9999", "Passagem da luz"),
(20, "Camila", "camila@meudominio.com", "00 0000-9999", "Rua Abc");

insert into estados values 
(1, "Acre", "AC"),
(2, "Amapá", "AP"),
(3, "Amazonas", "AM"),
(4, "Pará", "PA"),
(5, "Rondônia", "RO"),
(6, "Roraima", "RR"),
(7, "Tocantins", "TO");

select * from cliente;












