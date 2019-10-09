/* ALTERAR DADOS */
-- Muito cuidado para não setar SEM O WHERE

UPDATE aluno SET 
	Nome = 'Bruna Ribeiro',
	Idade = 21
WHERE IdAluno = 2;


/* EXCLUIR DADO */

DELETE FROM materia WHERE IdMateria = 1; 