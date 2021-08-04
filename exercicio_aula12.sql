select * from gafanhotos;
# lista com todas as gafanhotas
select nome from gafanhotos
where sexo = 'F';

# lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/dez/2015
select * from gafanhotos
where nascimento > '2000-01-01' and nascimento < '2015-12-31';

# lista com homens programadores
select * from gafanhotos
where prof = 'Programador' and sexo = 'M';

# lista com mulheres que nasceram no Brasil e nome começa com C
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'C%';

# lista com nome e nacionalidade de todos os homens que têm silva no nome, não nasceram no Brasil e pesam menos de 100kg
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%_silva_%' and nacionalidade != 'Brasil' and peso < '100';

# maior altura de homens que moram no Brasil
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';

# média de peso
select avg(peso) from gafanhotos;

# menor peso entre mulheres que nasceram fora do brasil entre 01/jan/1990 e 31/dez/2000?
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento > '1990-01-01' and nascimento < '2000-12-31';

# quantas mulheres têm mais de 1.90 de altura?
select count(altura) from gafanhotos
where sexo = 'F' and altura > '1.90';