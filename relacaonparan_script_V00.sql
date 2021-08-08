create table g_assiste_c (
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key(id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
) default charset = 'utf8';

insert into g_assiste_c values
(default, '2014-03-01', '1', '2'),   # default é o id do g_assiste_c, depois data, depois idgafanhoto e por fim idcurso
(default, '2014-03-01', '1', '4'),
(default, '2014-03-01', '2', '4');

# junções

select g.nome, g.nome, a.idgafanhoto, idcurso from gafanhotos as g	# não precisa colocar o as (gafanhotos as g)
join g_assiste_c as a
on g.id = a.idgafanhoto;

select g.nome, idcurso from gafanhotos g
join g_assiste_c a
on g.id = a.idgafanhoto
order by g.nome;

select g.nome, a.idcurso, c.nome from gafanhotos g
join g_assiste_c a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;

