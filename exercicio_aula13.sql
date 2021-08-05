# lista com profissão dos gafanhotos e seus respectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao;

# quantos homens e quantas mulheres nasceram após 01/jan/2005?
select sexo, count(*) from gafanhotos
where nascimento > 2005-01-01
group by sexo;

# gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só mostrar os que tiverem mais de 3 gafanhotos
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3;

# lista agrupada pela altura, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados
select altura, count(*) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos);
