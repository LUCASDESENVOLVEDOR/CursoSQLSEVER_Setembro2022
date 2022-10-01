
--EXEC SPU_Estudante 'SILVA',1

CREATE PROCEDURE SPU_Estudante
@Estudante_Sobrenome VARCHAR(40),
@Estudante_ID INT

AS
BEGIN

    UPDATE Estudante_Dados SET Estudante_Sobrenome = @Estudante_Sobrenome
	WHERE Estudante_ID = @Estudante_ID


END


