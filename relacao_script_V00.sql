# Adicionando a chave estrangeira

alter table gafanhotos
add cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

desc gafanhotos;

# adicionando o curso de preferência ao gafanhoto

update gafanhotos
set cursopreferido = '6'
where id = '1';

select * from gafanhotos;

# integridade referencial

# junções

select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos
join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

# inner join 

select g.nome, c.nome, c.ano #sem a chave aparecendo
from gafanhotos as g
inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

# outer join

select g.nome, c.nome, c.ano
from gafanhotos as g
left outer join cursos as c
on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano
from gafanhotos as g
right join cursos as c
on c.idcurso = g.cursopreferido
order by c.nome;


