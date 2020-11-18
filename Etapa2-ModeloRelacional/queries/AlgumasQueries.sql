-- Selecionar quantos filmes uma Produtora produziu

SELECT produtora.nome,
	   COUNT(produtora.nome) as producoes_realizadas
FROM produtora 
INNER JOIN prod_audio_produtora
ON produtora.cnpj = prod_audio_produtora.cnpj
GROUP BY (produtora.nome)
ORDER BY producoes_realizadas DESC

-- Selecionar elenco de atores com nome, idade e nota no IMDB para um filme selecionado.

SELECT a.nome as "Atores", a.idade as "Idade", a.nota_imdb_ator as "Nota do IMDB" FROM ator a
INNER JOIN prod_audio_ator paa
	on a.id_ator = paa.id_ator 
INNER JOIN prod_audiovisual pa
	on paa.id_producao = pa.id_producao
where pa.id_producao = 1 -- É possível selecionar os dados por produção

-- Selecionar os filmes assistidos e quantas vezes foram assistidos para determinado perfil

select pa.titulo as "Título do Filme", count(pp.id_producao) as "Vezes Assistidas" from perfil p
inner join perfil_prod pp
	on p.id_perfil = pp.id_perfil
inner join prod_audiovisual pa
	on pp.id_producao = pa.id_producao
where p.id_perfil = 2 -- É possível selecionar os dados por perfil
group by(pa.id_producao)
order by("Vezes Assistidas") DESC

	