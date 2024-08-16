
-- Consulta 1
select nome, ano from filmes;

-- Consulta 2
select nome, ano, duracao from filmes
order by ano asc;

-- Consulta 3
select nome, ano, duracao from filmes
where nome = 'De Volta para o Futuro';

-- Consulta 4
select nome, ano, duracao from filmes
where ano = 1997;

-- Consulta 5
select nome, ano, duracao from filmes
where ano > 2000;

-- Consulta 6
select nome, ano, duracao from filmes
where duracao > 100 and duracao < 150
order by duracao asc;

-- Consulta 7
select ano, count(*) as quantidade from filmes
group by ano
order by quantidade desc;

-- Consulta 8
select * from Atores
where genero = 'M';

-- Consulta 9
select * from Atores
where genero = 'F'
order by PrimeiroNome;

-- Consulta 10
select nome, genero from filmes, generos, FilmesGenero
where filmes.id = IdFilme and generos.Id = IdGenero;

-- Consulta 11
select nome, genero from filmes, generos, FilmesGenero
where filmes.id = IdFilme and generos.Id = IdGenero and genero = 'Mistério';

-- Consulta 12
select nome, primeironome, ultimonome, papel from filmes, Atores, ElencoFilme
where filmes.id = IdFilme and atores.Id = IdAtor;
