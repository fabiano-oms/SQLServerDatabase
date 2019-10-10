create table livro (
	Id_Livro int identity primary key not null,
	Nome varchar(100),
	Genero varchar(50),
);

create table autores (
	Id_Autores int identity primary key not null, 
	Nome varchar(100),
);

insert into livro (Nome, Genero) values
('Til','Romance'),
('Poder sem Limites','Auto-Ajuda');

insert into autores (Nome) values
('José de Alencar'),
('Tony Robbins');

create table publicar (
	Id_Publicar int identity primary key not null,
	Id_Livro int foreign key references livro(Id_Livro),
	Id_Autores int foreign key references autores(Id_Autores),
);

insert into publicar (Id_Livro,Id_Autores) values
(1,1),
(2,2);

select * from livro;
select * from autores;
select * from publicar;