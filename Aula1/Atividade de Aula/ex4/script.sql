create table equipe (
	Id_Equipe int identity primary key not null,
	Nome varchar(100),
);

insert into equipe (Nome) values
('Curinthia');

create table jogadores (
	Id_Jogadores int identity primary key not null,
	Nome varchar(100),
	Id_Equipe int foreign key references equipe(Id_Equipe),
);

insert into jogadores (Nome,Id_Equipe) values
('Ronaldo',1),
('Romarinho',1);

select * from equipe;
select * from jogadores;