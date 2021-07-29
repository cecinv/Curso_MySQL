create table if not exists cursos(
nome varchar (30) not null unique, 
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2021'
) default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

describe cursos;
 
select * from cursos;

update cursos
set nome = 'HTML5' 
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

update cursos
set ano = '2018', carga = '40'
where idcurso = '8';

update cursos
set ano = '2018', carga = '40'
where idcurso = '9';

update cursos
set ano = '2018', carga = '5'
where idcurso = '10';

delete from cursos
where idcurso >= '8';