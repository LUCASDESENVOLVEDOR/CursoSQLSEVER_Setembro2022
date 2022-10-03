

--EXEC SPD_Estudante 8

CREATE PROCEDURE SPD_Estudante
@Estudante_ID INT

AS
BEGIN

--codigo proibido.
    DELETE FROM Estudante_Dados
	WHERE Estudante_ID = @Estudante_ID
END


 