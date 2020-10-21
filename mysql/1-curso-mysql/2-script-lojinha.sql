create database if not exists loja;

use loja;

create table if not exists cliente ( 
	id bigint primary key,
    nome varchar(70) not null,
    email varchar(70) not null unique,
    telefone varchar(70) unique,
    endereco varchar(150)
);

create table if not exists estado ( 
	id bigint primary key,
    nome varchar(70) not null unique,
    sigla varchar(2) not null unique
);

create table if not exists produto ( 
	id bigint primary key,
    nome varchar(70) not null,
    codigo_fornecedor bigint not null
);

create table if not exists fornecedor (
	id bigint primary key,
    nome varchar(80)
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

insert into estado values 
(1, "Acre", "AC"),
(2, "Amapá", "AP"),
(3, "Amazonas", "AM"),
(4, "Pará", "PA"),
(5, "Rondônia", "RO"),
(6, "Roraima", "RR"),
(7, "Tocantins", "TO");

insert into produto values 
(1,'Arroz', 1),
(2,'Feijão', 2),
(3,'Macarrão', 3),
(4,'Frango', 4),
(5,'Carne', 5),
(6,'Pepino', 2),
(7,'Tomate', 3),
(8,'Cebola', 4),
(9,'Espinafre', 3),
(10,'Alho', 2),
(22,'Melancia', 2),
(33,'Maçã', 1),
(44,'Beterraba', 4),
(55,'Batata', 5),
(66,'Manjericão', 3),
(70,'Cupuaçu', 3),
(80,'Lentilha', 2),
(90,'Salame', 2),
(100,'Manteiga', 2),
(111,'Sal', 1),
(126,'Açucar', 5),
(144,'Pimenta do reino', 1);

insert into fornecedor values
(1, 'atacadao'),
(2, 'Material de limpeza'),
(3, 'industrial alimentos'),
(4, 'eletronicos'),
(5, 'produtos gerais');

/*ALTERA��ES*/

alter table cliente change column telefone telefone_celular varchar(80);
alter table cliente modify column telefone_celular varchar(90);

/*SELECT*/
/*Exibe cada registro ignorando os valores repetidos.*/
select distinct codigo_fornecedor from produto;

/*Seleciona todos os registros da tabela cliente que n�o tenham os nomes especificados*/
SELECT * FROM cliente WHERE nome not in ('camila', 'Renato', 'janaina', 'rebeca');

select * from cliente where nome like '%ia%';







