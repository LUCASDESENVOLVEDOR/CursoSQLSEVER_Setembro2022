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
	

	-->CRIE UMA FUNCAO QUE REALIZE A SOMA DE 2 NUMEROS !!!!!

	DECLARE @num1 INT = 10
	DECLARE @num2 INT = 20

	--PRINT CONVERT(VARCHAR(20),@num2)

	SELECT DBO.SOMA(@num1,@num2) ResultadoSoma
	
	
	CREATE FUNCTION SOMA(@num1 INT, @num2 INT)
	RETURNS INT

	BEGIN
	   RETURN @num1 + @num2
	END



	

