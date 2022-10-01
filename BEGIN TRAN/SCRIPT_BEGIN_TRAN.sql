
--> BEGIN TRAN - Uma transacao é aberta, onde o SGBD vai
--aguardar a confirmacao das alterações.  

BEGIN TRAN

	DELETE FROM Desempenho_Dados
	WHERE Estudante_ID = 1	

--analise do que foi realizado
SELECT * FROM Desempenho_Dados

--nunca esquecer de executar COMMIT ou ROLLBACK

COMMIT --> Confirmação do que foi  realizado

ROLLBACK --> Retorna as informações como estava antes da transacao
          -- ser aberta.


