
--CONSTRAINT RESTRICOES

--PK
--FK

--UNIQUE

DROP TABLE Cliente

CREATE TABLE Cliente(
	Cliente_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	Cliente_CPF CHAR(11) NOT NULL,
	Cliente_RG CHAR(9) NOT NULL,
	Cliente_UF CHAR(2) NOT NULL,
	Cliente_Nome VARCHAR(30) NOT NULL,
	Cliente_Sobrenome VARCHAR(40)  DEFAULT 'Não Informado',
	Cliente_DataInclusao DATETIME DEFAULT GETDATE(),
	Cliente_Ativo BIT DEFAULT 1,
	CONSTRAINT ClienteCPFuq UNIQUE(Cliente_CPF),
	CONSTRAINT ClienteUFRGuq UNIQUE(Cliente_RG,Cliente_UF)
)

INSERT INTO Cliente(Cliente_CPF,Cliente_RG,Cliente_UF,Cliente_Nome,Cliente_Idade)
VALUES             ('79566245000','181720589','RJ','Lucas',60)


-- CHECK - Expressao BOOLEAN.
   --ANALISE DO  REGISTRO NAS INSTRUCOES DE INSERT E UPDATE.


ALTER TABLE Cliente
ADD Cliente_Idade INT

ALTER TABLE CLIENTE
ADD CONSTRAINT ClienteIdadeck CHECK(Cliente_Idade < 100)

--DEFAULT 


ALTER TABLE Cliente
ADD Cliente_Sobrenome VARCHAR(40) 


ALTER TABLE CLIENTE
  ADD CONSTRAINT SobrenomeDF
  DEFAULT 'Não Informado' FOR Cliente_Sobrenome;


SELECT * FROM CLIENTE