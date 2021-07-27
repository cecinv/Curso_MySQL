create database cadastro
default character set utf8
default collate utf8_general_ci;

create table pessoas (
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil'
) default charset = utf8;