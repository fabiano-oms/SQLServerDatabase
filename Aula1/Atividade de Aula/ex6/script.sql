create table cursos (
IdCursos int identity primary key not null,
Nome varchar(30) not null,
Tipo varchar(30) not null,
Carga int
);

create table candidatos (
IdCandidatos int identity primary key not null,
Nome varchar(100) not null,
CPF char(11),
Idade int,
IdCursos int foreign key references cursos(IdCursos)
);

INSERT INTO cursos (Nome, Tipo, Carga) VALUES 
('CodeXP','FullStack',600),
('Excel','VBA',36),
('Adobe PS','Avançado',100);

INSERT INTO candidatos (Nome, CPF, Idade, IdCursos) VALUES
('Alef','11122233300',23,1),
('Bruna','11122233301',22,1),
('Bruno','11122233302',17,1),
('João','11122233303',50,2),
('Cláudio','11122233304',42,3),
('Sarney','11122233305',29,3),
('Thor','11122233306',33,2),
('Thor Jr','11122233307',13,3);

select * from cursos;
select * from candidatos;
