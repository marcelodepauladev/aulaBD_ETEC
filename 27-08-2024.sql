use escola;

SELECT MAX(NOTA) MAIOR_NOTA
FROM BOLETINS
WHERE ALUNO = (SELECT NOME FROM ALUNOS WHERE ID = 7);

SELECT *
FROM CIDADES C INNER JOIN ALUNOS A
ON (C.ID=A.ID_CIDADE);

#ou
SELECT *
FROM CIDADES C INNER JOIN ALUNOS A
ON (C.ID=A.ID_CIDADE);


SELECT b.ID "Código",
	   a.NOME "Alunos",
       d.NOME "Disciplina",
       b.DATA,
       b.NOTA       
FROM BOLETINS b INNER JOIN ALUNOS a
ON (b.ID_ALUNO=a.ID)
INNER JOIN DISCIPLINAS d 
ON (b.ID_DISCIPLINA=d.ID);