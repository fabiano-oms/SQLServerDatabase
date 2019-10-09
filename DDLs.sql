/* COMENTAR */
-- COMENTAR
-- INFORMATIVO DO QUE ESTAMOS CRIANDO NO SQL


/* CRIAR BANCO DE DADOS */

CREATE DATABASE boletim;


/* EXCLUIR BANCO */

DROP DATABASE boletim;


/* USAR O BANCO */

USE boletim;


/* CRIAR TABELA DE ALUNO */

-- INT - tipo inteiro
-- IDENTITY - autoincrementador, 1 em 1, "contador"
-- PRIMARY KEY - definir chave primária
-- NOT NULL - obriga que o dado sera inserido
-- VARCHAR - caracteres com quantidades variáveis
CREATE TABLE aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);


/* CRIAR TABELA DE MATÉRIA */

CREATE TABLE materia (
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Materia VARCHAR(50) NOT NULL
);


/* CRIANDO A TABELA DE TRABALHOS */

CREATE TABLE trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	-- CHAMAMOS NOSSAS CHAVES ESTRANGEIRAS
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES aluno(IdAluno)
);

-----------------------------------------------

/* INCLUIR NOVA COLUNA */

ALTER TABLE materia ADD Teste VARCHAR(2);

/* EXCLUIR COLUNA */

ALTER TABLE materia DROP COLUMN Teste;

--------------------------------------------

/* INSERIR DADO DE UM ALUNO */

INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Alef','R123',23);

INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Bruna','R133',22);

/* INSERIR DADO NA TABELA MATÉRIA */

INSERT INTO materia (Materia) VALUES ('Português');

INSERT INTO materia (Materia) VALUES ('Matemática');