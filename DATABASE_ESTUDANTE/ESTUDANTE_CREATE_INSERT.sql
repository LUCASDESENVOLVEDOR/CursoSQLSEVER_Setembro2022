
-->JOINS

--> Vamos criar um novo banco de dados

CREATE DATABASE Estudante

USE Estudante
GO

	CREATE TABLE Estudante_Dados(
	  Estudante_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	  Nome VARCHAR(40) NOT NULL,
	  Estudante_Sobrenome VARCHAR(40),
	  Estudante_Telefone NUMERIC,
	  Estudante_Email  VARCHAR(50),
	  Estudante_DataNasc DATE
	  )
	GO

---->
	CREATE TABLE Disciplina_Dados(
		Disciplina_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
		Estudante_ID INT,
		Disciplina_Nome VARCHAR(30) NOT NULL,
		Disciplina_Mensalidade DECIMAL(18,3),
		Disciplina_Duracao INT,

		CONSTRAINT Estudante_FK FOREIGN KEY (Estudante_ID)
		REFERENCES Estudante_Dados(Estudante_ID)  

	)
	GO


	------>
	
	CREATE TABLE Desempenho_Dados(
		Desempenho_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
		Estudante_ID INT NOT NULL,
		Disciplina_ID INT NOT NULL,
		Desempenho_Nota DECIMAL(18,3) NOT NULL,

		CONSTRAINT Estudante_Desempenho_FK FOREIGN KEY (Estudante_ID)
		REFERENCES Estudante_Dados(Estudante_ID),

		CONSTRAINT Disciplina_FK FOREIGN KEY (Disciplina_ID)
		REFERENCES Disciplina_Dados(Disciplina_ID)
	)
	GO

	--
	--SELECT * FROM Estudante_Dados
	--SELECT * FROM Disciplina_Dados

	INSERT INTO Desempenho_Dados (Estudante_ID,Disciplina_ID,Desempenho_Nota)
	VALUES (1,1,8.5),(4,6,10.0),(3,7,7.8)







	--INSERIR DADOS NA TABELA DE ESTUDANTE

	INSERT INTO Estudante_Dados (Nome,Estudante_Sobrenome,Estudante_Telefone,Estudante_Email,Estudante_DataNasc)
	VALUES  ('Amanda','Palhares',1122233456,'email1@email.com','2010-04-10'),
			('Anderson','Freitas',116767456,'email2@email.com','2010-04-10'),
			('Eduardo','Yoshikawa',1133433456,'email3@email.com','2010-04-10'),
			('Kauane','Antonini',1122678456,'email4@email.com','2010-04-10'),
			('Leonardo','Oliveira',112678456,'email5email.com','2010-04-10'),
			('Luiz','Rebello',115678456,'email6@email.com','2010-04-10')
	    
	--SELECT * FROM Estudante_Dados

	INSERT INTO Disciplina_Dados(Estudante_ID,Disciplina_Nome,Disciplina_Mensalidade,Disciplina_Duracao)
	VALUES  (1,'JavaScript',256.32,40),
			(2,'Intro C#',456.32,100),
			(3,'ASP .NET CORE',378.32,100),
			(1,'Tec Dados',987.32,32),
			(5,'Inovação',345.32,32),
			(4,'Angular',234.32,40),
			(3,'SQL',123.32,80),
			(1,'SQL',123.32,80)




