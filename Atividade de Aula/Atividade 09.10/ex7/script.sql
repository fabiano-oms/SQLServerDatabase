create table escola (
IdEscola int identity primary key not null,
Nome varchar(100) not null,
Endereco varchar(100) not null,
Tipo varchar(50),
);

create table turma (
IdTurma int identity primary key not null,
Classe varchar(30) not null,
);

create table responsavel (
IdResponsavel int identity primary key not null,
Nome varchar(100),
CPF char(11),
Endereco varchar(100),
);

insert into escola (Nome, Endereco, Tipo) values 
('Objetivo','Rua A','Privado');

insert into turma (Classe) values
('1º Ano E.M.'),
('2º Ano E.M.'),
('3º Ano E.M.');

insert into responsavel (Nome, CPF, Endereco) values
('Alef',11122233300,'Rua K'),
('Thor',11122233301,'Rua J');

create table cadastro (
IdCadastro int identity primary key not null,
Nome_Aluno varchar(100),
Idade_Aluno int,
IdEscola int foreign key references escola(IdEscola),
IdResponsavel int foreign key references responsavel(IdResponsavel),
IdTurma int foreign key references turma(IdTurma),
);

insert into cadastro (Nome_Aluno, Idade_Aluno, IdEscola, IdResponsavel, IdTurma) values
('Joao',17,1,1,3),
('Thor Jr',16,1,2,2),
('Irmão do Thor Jr',17,1,2,3),
('Irmã do Thor Jr',15,1,2,1);

select * from escola;
select * from turma;
select * from responsavel;
select * from cadastro;
