﻿/*Exercício:

	CREATE → CRIE 3 TABELAS com 3 COLUNAS CADA

	INSERT → FAÇA 2 REGISTROS EM CADA TABELA

	SELECT → FAÇA 2 SELECTS COM CADA TABELA SENDO QUE EM 1 
	UTILIZAR UMA CONDIÇÃO DE WHERE
*/




--CREATE → CRIE 3 TABELAS com 3 COLUNAS CADA

CREATE TABLE CARRO (
         Carro_Name VARCHAR(30),
		 Carro_Model VARCHAR(20),
		 Carro_Marca VARCHAR(20)
		 )

--NOVA COLUNA APÓS A TABELA TER SIDO CRIADA.

ALTER TABLE CARRO ADD Active BIT 

--INSERT → FAÇA 2 REGISTROS EM CADA TABELA

INSERT INTO CARRO (Carro_Name,Carro_Model,Carro_Marca) 
VALUES ('HB20','COMFORT','HYUNDAI')

---SELECT → FAÇA 2 SELECTS COM CADA TABELA SENDO QUE EM 1 
--UTILIZAR UMA CONDIÇÃO DE WHERE

--* ASTERISCO = REPRESENTA TODAS AS COLUNAS
-- A AUSENCIA DO WHERE (CONDICAO), RETORNARÁ TODAS AS LINHAS DA TABELA.

SELECT *
FROM CARRO
WHERE ACTIVE = 1

--> ATUALIZAR UM REGISTRO.
 UPDATE CARRO SET ACTIVE = 1 

 UPDATE CARRO SET ACTIVE= 0 WHERE Carro_Name = 'HB20'


 UPDATE CARRO SET Carro_Name = 'GOLF'
 WHERE Carro_Model_Year = 2020

--> DELETAR UM REGISTRO (Linha)
  DELETE FROM CARRO
  WHERE Carro_Name = 'HB20'

--> REMOVER UMA COLUNA
  ALTER TABLE CARRO
  DROP COLUMN Carro_Model_Year




