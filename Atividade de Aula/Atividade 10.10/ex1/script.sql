create table cor (
	Id_Cor int identity primary key not null,
	Cor varchar (30),
);

create table tamanho (
	Id_Tamanho int identity primary key not null,
	Tamanho Varchar(2),
);

create table marca (
	Id_Marca int identity primary key not null,
	Marca varchar(50),
);

insert into cor (Cor) values
('Branco'),
('Preto');

insert into tamanho (Tamanho) values
('P'),
('M'),
('G'),
('GG');

insert into marca (Marca) values
('Lacoste'),
('Brooksfield'),
('Calvin Klein');

create table tipo (
	Id_Tipo int identity primary key not null,
	Quantidade int,
	Id_Tamanho int foreign key references tamanho(Id_Tamanho),
	Id_Cor int foreign key references cor(Id_Cor),
);

insert into tipo (Quantidade,Id_Tamanho,Id_Cor) values
(10,1,1),
(15,1,2),
(8,2,1),
(3,2,2),
(7,3,1),
(9,3,2),
(15,4,1),
(8,4,2);

create table camiseta (
	Id_Camiseta int identity primary key not null,
	Id_Marca int foreign key references marca(Id_Marca),
	Id_Tipo int foreign key references tipo(Id_Tipo),
);

insert into camiseta (Id_Marca,Id_Tipo) values
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(2,1),
(2,2),
(2,3),
(2,4),
(2,5),
(2,6),
(2,7),
(2,8),
(3,1),
(3,2),
(3,3),
(3,4),
(3,5),
(3,6),
(3,7),
(3,8);

select * from cor;
select * from tamanho;
select * from marca;
select * from tipo;
select * from camiseta;

create table pedido (
	Id_Pedido int identity primary key not null,
	Id_Camiseta int foreign key references camiseta(Id_Camiseta),
);

insert into pedido (Id_Camiseta) values
(1),(5),(9),(17),(23);

select * from pedido;