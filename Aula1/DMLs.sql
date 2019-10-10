-- DML manipulação

/* INSERIR DADO DE UM ALUNO */

INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Alef','R123',23);

INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Alef','R123',23), ('Bruna','R133',22);

/* INSERIR DADO NA TABELA MATÉRIA */

INSERT INTO materia (Materia) VALUES ('Português');

INSERT INTO materia (Materia) VALUES ('Matemática');


/* ALTERAR DADOS */
-- Muito cuidado para não setar SEM O WHERE

UPDATE aluno SET 
	Nome = 'Bruna Ribeiro',
	Idade = 21
WHERE IdAluno = 2;


/* EXCLUIR DADO */

DELETE FROM materia WHERE IdMateria = 1; 