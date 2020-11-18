/*
	Query implementada:
	"Quais foram os top 5 itens mais vistos no ano de 2020. 
	Indicar o título, tipo da obra e avaliação média no imdb dos atores das respectivas obras."
*/

SELECT 
	ROUND(AVG(act.nota_imdb_ator)::numeric,2) as "Média de notas IMDB dos atores", --Média das notas
	prod_auvi.titulo as "Título da produção", --Título da obra
	prod_auvi.tipo as "Tipo da produção", --Tipo da obra
	prod_auvi.nota_imdb as "Nota IMDB da produção", --Opcional do grupo: nota da obra
	ppqnt.Vezes_Assistidas --Quantidade de vezes que a produção foi assistida (necessário para o top 5)
FROM ator act

INNER JOIN prod_audio_ator prod_auvi_act    -- Primeira ligação: Tabela ator com a
	ON act.id_ator = prod_auvi_act.id_ator  -- tabela de relacionamento prod_audio_ator
	
INNER JOIN prod_audiovisual prod_auvi                    -- Após adquirir os IDs de cada ator,
	on prod_auvi_act.id_producao = prod_auvi.id_producao -- liga os atores a produção audiovisual
	
RIGHT JOIN 						/* Essa ligação necessita de um select a parte,
								   haja vista que, ao realizar a agregação de várias tuplas
								   (COUNT do id_producao da entidade "perfil_producao"),
								   a mesma seria multiplicada pelo número de tuplas 
								   correspondente. Isso porque o JOIN realiza um
								   produto cartesiano entre as tuplas de duas entidades.
								   
								   Logo, se um filme tivesse 5 atores (5 tuplas da entidade ator)
								   o COUNT resultaria em COUNT(id_producao) * 5.
								*/
	(SELECT COUNT(perf_prod.id_producao) as Vezes_Assistidas,
	 		perf_prod.id_producao
	 FROM public.perfil_prod perf_prod
	 WHERE EXTRACT(year FROM perf_prod.ult_acesso)='2020' --Limita que a data de acesso seja somente em 2020
	 GROUP BY perf_prod.id_producao) ppqnt 
	 
	 ON(ppqnt.id_producao = prod_auvi.id_producao) --Liga o ID da produção da entidade prod_audiovisual com perfil_prod
	 
GROUP BY (ppqnt.Vezes_Assistidas, prod_auvi.titulo, prod_auvi.tipo, prod_auvi.nota_imdb)
ORDER BY ppqnt.Vezes_Assistidas DESC LIMIT 5 --Top 5 (maior para o menor)