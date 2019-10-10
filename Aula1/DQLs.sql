-- DQL - busca

/* MOSTRAR DADOS */
-- * pegar todos os dados da tabela

SELECT * FROM aluno;

SELECT * FROM materia;

------------------------

/* Mostrar dados em uma "busca" com LIKE */
-- %X% Se no inicio mostra dados que TERMINAM em X,
-- Se no final mostra dados que INICIEM em X.
SELECT * FROM aluno WHERE Nome LIKE '%Bruna%';

/* Ordenar por nome em ordem crescente A-Z */
SELECT * FROM aluno ORDER BY Nome ASC;

/* Ordenar por nome em ordem decrescente Z-A */
SELECT * FROM aluno ORDER BY Nome DESC;

-------------------------
--10/10
------------------------

/* JUNTAMOS AS TRÊS TABELAS COM INNER JOIN */
SELECT * FROM trabalho
    INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno   ON aluno.IdAluno     = trabalho.IdAluno


/* JUNTAMOS AS TRÊS TABELAS COM INNER JOIN */
-- Deixamos somente os dados que nos interesam no momento
SELECT
	-- nome da tabela . nome do atributo
	aluno.Nome,
	aluno.Ra,
	aluno.Idade,
	materia.Materia,
	trabalho.Nota
FROM trabalho
	INNER JOIN materia ON materia.IdMateria = trabalho.IdMateria
	INNER JOIN aluno   ON aluno.IdAluno     = trabalho.IdAluno


/* TRUNCATE - apaga todos os registros de uma tabela */
TRUNCATE TABLE tabalho;

--------------

/*
	Utilizamos a função nativa COUNT 
	para retornar o número de registro
	na minha tabela

	usamos o Alias "AS" para nomear a coluna
*/
SELECT COUNT(*) AS total_registros FROM aluno;

/* Pegamos o idade máxima dos alunos */
SELECT MAX(Idade) AS idade_maxima FROM aluno;

/* Pegamos a idade mínima dos alunos */
SELECT MIN(Idade) AS idade_minima FROM aluno;

/* Pegamos a idade média dos alunos */
SELECT AVG(Idade) AS media_idade FROM aluno;

/* Soma das idades */
SELECT SUM(Idade) AS soma_de_idades FROM aluno;


/* Juntamos todas as funções em uma única consulta */
SELECT
	COUNT(*) AS total,
	MAX(Idade) AS idade_maxima,
	MIN(Idade) AS idade_minima,
	AVG(Idade) AS media_idade,
	SUM(Idade) AS soma_idade
FROM aluno;

--------------------

/* SUBSTRING */
-- Pegamos parte de uma string
SELECT SUBSTRING(Nome,0,2) AS cortado FROM aluno;

/* UPPER */
-- Deixar tudo em maiúsculo
SELECT UPPER(Nome) AS Nome FROM aluno;

/* LOWER */
SELECT LOWER(Nome) AS Nome FROM aluno;