
--EXEC SPI_Estudante 'Renato','Scarpim',2232423,'email@email.com','2010-04-10'


CREATE PROCEDURE SPI_Estudante 
@Estudante_Nome VARCHAR(40),
@Estudante_Sobrenome VARCHAR(40) NULL,
@Estudante_Telefone numeric,
@Estudante_Email varchar(50),
@Estudante_DataNasc date


AS
BEGIN

     INSERT INTO Estudante_Dados(Estudante_Nome,Estudante_Sobrenome
							,Estudante_Telefone,Estudante_Email
							,Estudante_DataNasc)
	VALUES (@Estudante_Nome,@Estudante_Sobrenome, @Estudante_Telefone,
	        @Estudante_Email, @Estudante_DataNasc)


END
