/*Melhorando os comandos DDL para aprimorar a criação da base de dados e das tabelas e seus campos*/

DROP DATABASE cadastro;

CREATE DATABASE IF NOT EXISTS cadastro 
DEFAULT CHARACTER SET utf8mb4 
DEFAULT COLLATE utf8mb4_general_ci;

USE cadastro;

CREATE TABLE IF NOT EXISTS pessoa (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL, 
	nascimento DATE NOT NULL,
    sexo ENUM('M','F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(40) NOT NULL DEFAULT 'brasileira'
) DEFAULT CHARSET =  utf8mb4;
















