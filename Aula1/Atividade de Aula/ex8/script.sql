create table departamento (
Id_Departamento int identity primary key not null,
Setor varchar(30),
);

create table projeto (
Id_Projeto int identity primary key not null,
Nome varchar(50),
Descricao varchar(100),
);

insert into departamento (Setor) values
('Vendas');

insert into projeto (Nome, Descricao) values
('iFOOD','Alimentação Ágil'),
('Rappi','Entregas');

create table localizacao (
Id_Local int identity primary key not null,
Endereco varchar(100),
Id_Departamento int foreign key references departamento(Id_Departamento),
);

create table empregado (
Id_Empregado int identity primary key not null,
Nome varchar(100),
CPF char(11),
Endereco varchar(100),
Id_Departamento int foreign key references departamento(Id_Departamento),
);

insert into localizacao (Endereco, Id_Departamento) values
('Avenida K',1),
('Avenida R',1);

insert into empregado (Nome, CPF, Endereco, Id_Departamento) values
('João',11122233300,'Rua 1',1),
('Pedro',11122233301,'Rua 2',1),
('Carlos',11122233302,'Rua 3',1);

create table dependente (
Id_Dependente int identity primary key not null,
Nome varchar(100),
RG char(10),
Id_Empregado int foreign key references empregado(Id_Empregado)
);

insert into dependente (Nome, RG, Id_Empregado) values
('João Jr',1112223330,1),
('Irmão João Jr',1112223331,1),
('Pedro Jr',1112223332,2);

create table registro_projeto (
Id_Registro int identity primary key not null,
Id_Projeto int foreign key references projeto(Id_Projeto),
Id_Empregado int foreign key references empregado(Id_Empregado),
);

insert into registro_projeto (Id_Projeto,Id_Empregado) values
(1,1),
(1,2),
(1,3),
(2,2),
(2,3);

select * from departamento;
select * from projeto;
select * from localizacao;
select * from empregado;
select * from dependente;
select * from registro_projeto;