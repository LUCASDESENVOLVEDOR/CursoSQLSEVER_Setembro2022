USE Estudante
GO

--VAMOS RETORNAR -> ID ESTUDANTE,NOME ESTUDANTE,SOBRENOME,NOME DA DISCIPLINA E A DURACAO

SELECT * FROM Estudante_Dados

   SELECT E.Estudante_ID as ID,
          Estudante_Nome as Nome,
		  Estudante_Sobrenome as Sobrenome,
		  D.Disciplina_Nome,
		  D.Disciplina_Duracao
   FROM Estudante_Dados as E
   --operando com o campo em comum entre as tabelas.
   INNER JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)  
  --------------

  SELECT  E.Estudante_ID as ID,
          Estudante_Nome as Nome,
		  Estudante_Sobrenome as Sobrenome,
		  D.Disciplina_Nome,
		  D.Disciplina_Duracao
   FROM Estudante_Dados as E
   --
   LEFT JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)
  

  ------------------------------------------
  SELECT  E.Estudante_ID as ID,
          Estudante_Nome as Nome,
		  Estudante_Sobrenome as Sobrenome,
		  D.Disciplina_Nome,
		  D.Disciplina_Duracao
   FROM Estudante_Dados as E
   --
   RIGHT JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)
  

  -----------------------------------------
  
  ------------------------------------------
   SELECT  E.*, D.*
   FROM Estudante_Dados as E
   --
   FULL JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)

   ---
   SELECT  E.*, D.*
   FROM Estudante_Dados as E
   --
   CROSS JOIN Disciplina_Dados as D 















