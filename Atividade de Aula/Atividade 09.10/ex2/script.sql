create table empresa (
	Id_Empresa int identity primary key not null,
	Nome varchar(100) not null,
	Endereco varchar(100) not null,
	CNPJ varchar(25),
);

create table diretor (
	Id_Diretor int identity primary key not null,
	Nome varchar(100),
);

insert into empresa (Nome, Endereco, CNPJ) values
('BRQ','Avenida K','11122223333000');

insert into diretor (Nome) values
('Jubileu'),
('Marizete');

--------------------------------------------

create table departamento (
	Id_Departamento int identity primary key not null,
	Setor varchar(50),
	Diretor_Dep int foreign key references diretor(Id_Diretor),
	Empresa int foreign key references empresa(Id_Empresa),
);

insert into departamento (Setor,Diretor_Dep,Empresa) values
('TI',2,1),
('Vendas',1,1);

-----------------------------------------

select * from empresa;
select * from diretor;
select * from departamento;