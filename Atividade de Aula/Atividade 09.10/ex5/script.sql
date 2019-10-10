
create table clientes (
	Id_Clientes int identity primary key not null,
	Nome varchar(100),
	CPF varchar(25),
);

insert into clientes (Nome, CPF) values
('João','11122233300');

create table produtos (
	Id_Produtos int identity primary key not null,
	Nome varchar(100),
);

insert into produtos (Nome) values
('Feijão');

create table compras (
	Id_Compras int identity primary key not null,
	Id_Clientes int foreign key references clientes(Id_Clientes),
	Id_Produtos int foreign key references produtos(Id_Produtos),
);

insert into compras (Id_Clientes,Id_Produtos) values
(1,1);

select * from clientes;
select * from produtos;
select * from compras;