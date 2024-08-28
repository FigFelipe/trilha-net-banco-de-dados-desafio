
-- 1. Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- 2. Buscar o nome e ano (ordem crescente) dos filmes
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- 3. Buscar pelo filme 'De Volta para o Futuro', 
-- retornando nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4. Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5. Buscar os filmes lançados após o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7. Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8. Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9. Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10. Buscar o nome do filme e o gênero
SELECT * FROM Filmes
SELECT * FROM Generos
SELECT * FROM FilmesGenero

SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT
	Filmes.Nome,
	Generos.Genero
FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT * FROM ElencoFilme
SELECT * FROM Atores
SELECT * FROM Filmes

SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM ElencoFilme 
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
