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

select * from cursos
order by nome;  

select ano, nome, carga from cursos
order by ano, nome;

select nome, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <> 2016
order by ano, nome;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano;

select nome, carga, totalaulas from cursos
where carga > 35 and totalaulas <= 30;

select * from cursos
where nome like 'P%';

select * from cursos
where nome like '%a';

insert into cursos values
('8', 'PáOO', 'Teste de acento', '60', '35', '2016');
select * from cursos;

select * from cursos
where nome like '%a%';

select * from cursos
where nome not like 'PH%P';  # php e photoshop ficam de fora

insert into cursos values
('10', 'PHP4', 'Curso de PHP, versão 4.0', '30', '11', '2010'),
('11', 'PHP7', 'Curso de PHP, versão 7.0', '40', '20', '2020');

select * from cursos
where nome like 'ph%p%';

select * from cursos
where nome like 'ph%p_';

select distinct carga from cursos
order by carga;

select count(nome) from cursos;

select count(*) from cursos where carga > 30;

select max(carga) from cursos;

select max(totalaulas) from cursos where ano = '2016';

select nome, min(totalaulas) from cursos where ano = '2016';

select sum(totalaulas) from cursos;

select sum(totalaulas) from cursos where ano = '2016';

select avg(totalaulas) from cursos;

select avg(totalaulas) from cursos where ano = '2016';

select carga, count(nome) from cursos
group by carga
order by carga;

select carga, count(*) from cursos
group by carga
having count(*) >= 2;

select ano, count(*) from cursos
where totalaulas >= 30
group by ano
having ano > 2013
order by count(*) desc;

select carga, count(*) from cursos
where ano > 2013
group by carga
having carga > (select avg(carga) from cursos);
