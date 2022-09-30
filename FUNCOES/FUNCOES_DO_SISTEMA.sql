--> Função.
     --> return tipo especifico.
	 --> pode ou não receber um parametro.

USE Estudante

-->FUNÇÕES DE AGREGAÇÃO.

  SELECT AVG(Disciplina_Duracao) as 'Média de Duração das Disciplinas'
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)

 -->COUNT() - Retorna um valor numerico inteiro de um campo especifico
 --de dados.
 --E.Estudante_Nome, d.Disciplina_Nome, d.Disciplina_Duracao
  
  --DISTINCT REMOVE AS LINHAS DUPLICADAS.

  SELECT  COUNT(DISTINCT Estudante_Nome) as TotalLinhas
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)

  --ANALISE SE TIVER LINHA DUPLICADA, DO SELECT.
  SELECT DISTINCT E.Estudante_Nome, d.Disciplina_Nome, d.Disciplina_Duracao
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)

  --MAX retorna o maior valor numerico de uma lista de valores numericos.
  SELECT MAX(D.Disciplina_Duracao) AS MaiorDuracao
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)

  --MIN retorna o menor valor numerico de uma lista de valores numericos.
  SELECT MIN(D.Disciplina_Duracao) AS MenorDuracao
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)

  SELECT SUM(D.Disciplina_Duracao) AS SomaDeTodasAsDuracoes
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)


--FUNÇÕES DE DATA!

ALTER TABLE Estudante_Dados
ADD Estudante_DataInclusao DATETIME  DEFAULT GETDATE()

--ANO ATUAL - ANO NASC

--DATEDIFF (TEMPO, DATA INICIAL, DATA FINAL)


--DATEPART(

SELECT TOP 1 Estudante_DataNasc ,
             DATEDIFF(YEAR,Estudante_DataNasc,GETDATE()) Idade
FROM Estudante_Dados 
SELECT DAY(GETDATE()) dia,
       MONTH(GETDATE()) mes,
	   YEAR('2015-09-30') ano


--FUNCOES MATEMATICAS
SELECT SQRT(25)

-----------

--FUNCOES STRING

 --LOWER
  SELECT DISTINCT LOWER(E.Estudante_Nome) Minusculo
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)

  --UPPER
  SELECT DISTINCT UPPER(E.Estudante_Nome) Maiusculo
  FROM Estudante_Dados E
  INNER JOIN Disciplina_Dados D 
  ON (E.Estudante_ID =D.Estudante_ID)

  --LTRIM - left= tira os espacos da equerda
  --RTRIM - tira os espacos da direita
  --TRIM  - tira os espacos da esquerda e da direita.

   SELECT DISTINCT TRIM(E.Estudante_Nome) Nome
   FROM Estudante_Dados E
  
  --SUBSTRING()
   SELECT DISTINCT SUBSTRING(TRIM(E.Estudante_Nome),0,3)    Nome
   FROM Estudante_Dados E
  
  --ISNULL

  SELECT DISTINCT E.Estudante_Nome, 
                  ISNULL(E.Estudante_Sobrenome,'Não Informado') Sobrenome
  FROM Estudante_Dados E
  



  
















