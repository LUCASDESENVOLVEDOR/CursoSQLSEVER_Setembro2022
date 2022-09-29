
USE FILMES

SELECT * FROM Filme
SELECT * FROM Producao where ativo = 1 

--update Producao set ativo = 1 where Filme_ID = 4 

--- INNER JOIN 
--Vai retornar apenas as informações que existam nas duas tabelas.

	SELECT Filme_Nome, Filme_Diretor, Producao.Producao_Nome_Produtora
	FROM Filme
	INNER JOIN Producao ON (Filme.Filme_ID = Producao.Filme_ID)
	WHERE Producao.ativo =1
			

