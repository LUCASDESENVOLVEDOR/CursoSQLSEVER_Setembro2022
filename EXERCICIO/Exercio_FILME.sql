

-- CRIAR UM DB CHAMADO FILMES

CREATE DATABASE FILMES
GO

USE FILMES

CREATE TABLE Filme(
  Filme_ID INT NOT NULL IDENTITY(1,1),
  Filme_Nome VARCHAR(50) NOT NULL,
  Filme_Elenco_Principal VARCHAR(50),
  Filme_Diretor VARCHAR(40),
  Filme_Roteiro VARCHAR(40),
  Filme_Ano_Lancamento DATE
  )

  --ALTERAR A TABLE PARA QUE A COLUNA Filme_ID TENHA UMA PK

  ALTER TABLE Filme
  ADD CONSTRAINT Filme_PK PRIMARY KEY(Filme_ID)


  --INSERIR DADOS NA TABELA
  GO

  INSERT INTO Filme (Filme_Nome,Filme_Elenco_Principal,Filme_Diretor,Filme_Roteiro,Filme_Ano_Lancamento)
  VALUES ('TITANIC', 'ROSE AND JACK', 'STEVEN SPILBERG', 'NAVIO AFUNDA', '19/05/1997'), 
('SPARTA', 'RODRIGO SANTORO', 'EMINEM', 'GERRA DE TIRANOS', '16/02/2005'),
('UM MALUCO NO PEDAÇO', 'WILL SMITH', 'WILL SMITH', 'UM MALUCO KK', '11/04/2013'),
('SNIPER AMERICANO', 'TIM BERRY', 'JOHN TRAVOLTA', 'GERRA AFEGANISTAO', '16/12/2011'),
('CARROS S.A', 'FUSCAO', 'EMINEM', 'CORRIDA INFANTIL', '23/12/1994'),
('MONSTRO S.A', 'VARIOS MONSTROS', 'GRUGER', 'QUEM É O MAIS FEIO', '23/11/2017')

---CONSULTANDO DADOS

SELECT Filme_Nome, Filme_Ano_Lancamento FROM FILME


--CONSULTA COM A CLAUSULA WHERE

SELECT *
FROM FILME
WHERE Filme_Roteiro LIKE 'G%'

--Criar tabela de Producao

CREATE TABLE Producao (
   Producao_ID INT NOT NULL  PRIMARY KEY,
   Filme_ID INT NOT NULL,
   Producao_Nome_Produtora VARCHAR(50),
   Producao_Orcamento FLOAT,
   Producao_Nome_Produtor VARCHAR(50),  
   --CONSTRAINT Producao_PK PRIMARY KEY (Producao_ID,Filme_ID),
   CONSTRAINT Filme_FK FOREIGN KEY (Filme_ID)
   REFERENCES Filme(Filme_ID)
)

--INSERIR DADOS EM PRODUCAO

--SELECT * FROM Filme 

INSERT INTO Producao(Filme_ID,Producao_Nome_Produtora,Producao_Orcamento,Producao_Nome_Produtor)
VALUES (1,'WARNER', 12548925, 'Paulo Gorgulho'),
       (2,'PICTURES', 12545689, 'Padre Chico'),
       (3,'SONY', 12.23600, 'FOGUINHO'),
	   (4,'MAGIF', 65478936, 'TONY RAMOS'),
	   (5,'BROOKS FILME', 325647, 'CARLOS SANTOS'),
	   (6,'FOLLOW', 345235, 'JHIMMY CARTER')  

--ATUALIZAR REGISTRO DE ORCAMENTO

--update Producao set Filme_ID = 1 where Producao_ID =2 
 

UPDATE Producao SET Producao_Orcamento = 120.000
WHERE Producao_ID = 1 

UPDATE Producao SET Producao_Orcamento = 120.099
WHERE Producao_ID = 2 

UPDATE Producao SET Producao_Orcamento = 450.102
WHERE Producao_ID IN(4,5,6)

   --CAST neste caso assume o papel de decimal(18,3)
   -- as representa o apelido da coluna. 

		SELECT CAST(Producao_Orcamento AS decimal(18,3)) as Orcamento,
		       Producao_Nome_Produtora Produtora,
			   Produtor = Producao_Nome_Produtor
		FROM Producao 
		WHERE Producao_Nome_Produtora = 'WARNER'














