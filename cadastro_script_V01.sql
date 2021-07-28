create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas (
`id` int NOT NULL auto_increment,
`nome` varchar(30) NOT NULL,
`nascimento` date,
`sexo` enum('M', 'F'),
`peso` decimal(5,2),
`altura` decimal(3,2),
`nacionalidade` varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

insert into pessoas values
(default,'Creuza', '1920-10-25', 'F', '50.3', '1.65', default);

insert into pessoas values
(default,'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(default, 'Pedro', '2000-07-15', 'M', '68.3', '1.65', 'Brasil'),
(default, 'Cláudio', '1975-4-21', 'M', '99', '2.15', default);

select * from pessoas;

