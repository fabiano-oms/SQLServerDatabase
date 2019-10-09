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
