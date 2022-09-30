USE Estudante
GO


--let nomevaravel = ''

	--DECLARE @frase VARCHAR(40) = ' Olá, estamos no treinamento de banco. ' 

	--SELECT DBO.REMOVER_ESPACO(@frase) as Frase


	CREATE FUNCTION REMOVER_ESPACO(@frase varchar(40))
	RETURNS varchar(40)

	BEGIN

	   RETURN REPLACE(TRIM(@frase),' ','')

	END
	




