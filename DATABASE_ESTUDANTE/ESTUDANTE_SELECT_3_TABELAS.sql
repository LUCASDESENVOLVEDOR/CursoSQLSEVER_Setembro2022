
--Nome Aluno,Sobrenome, Disciplina, Duracao, Nota

SELECT E.Estudante_Nome, 
       E.Estudante_Sobrenome, 
	   DI.Disciplina_Nome, 
	   D.Desempenho_Nota
FROM Desempenho_Dados as D
INNER JOIN Disciplina_Dados as DI ON(D.Estudante_ID = DI.Estudante_ID)
INNER JOIN Estudante_Dados as E ON(D.Estudante_ID = E.Estudante_ID)



--Nome Aluno,Sobrenome, Disciplina, Duracao, Nota

SELECT 
      E.Estudante_Nome,
	  E.Estudante_ID,
	  D.Disciplina_Nome,
	  DE.Desempenho_Nota

FROM Estudante_Dados as E
CROSS JOIN Disciplina_Dados as D --ON (E.Estudante_ID = D.Estudante_ID)

CROSS JOIN Desempenho_Dados as DE --ON (E.Estudante_ID = DE.Estudante_ID 
                                    -- AND D.Disciplina_ID = DE.Disciplina_ID)

SELECT * FROM Desempenho_Dados


SELECT * FROM Estudante_Dados
SELECT * FROM  Disciplina_Dados



