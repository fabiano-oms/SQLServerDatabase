Create database XepaDigital;
use XepaDigital;

Create table Endereco(
    IdEndereco int identity primary key,
    Endereco varchar (255),
    Numero varchar (10),
    CEP varchar (9),
    Cidade varchar (255),
    Bairro varchar (255),
    Estado char (2)
);
Create table Usuario(
    IdUsuario int identity primary key,
    NomeUsuario varchar (255) not null,
    EmailUsuario varchar (255) unique not null,
    SenhaUsuario varchar (8) not null,
    ReceberNotif bit DEFAULT (0),
    TipoUsuario varchar (20),
    Telefone1 varchar (15),
    Telefone2 varchar (15),
    IdEndereco int foreign key references Endereco(IdEndereco)
);
Create table Colaborador(
    IdColaborador int identity primary key,
    ImgPerfil varchar (255),
    RazaoSocial varchar (50),
    DocumentoColab varchar (20),
    FazEntrega bit DEFAULT (0),
    SobreColab Text,
    IdUsuario int foreign key references Usuario(IdUsuario)
);
Create table SobreProduto(
    IdSobreProduto int identity primary key,
    DescricaoProduto varchar (255) not null,
    Disponibilidade decimal not null,
    Organico bit DEFAULT (0) not null,
    Preco varchar (20) not null,
    Validade varchar (20) not null
);
Create table Produto(
    IdProduto int identity primary key,
    NomeProduto varchar (255) not null,
    ImgProduto varchar (255) not null,
    IdSobreProduto int foreign key references SobreProduto(IdSobreProduto)
);
Create table RegistroProduto(
    IdRegistro int identity primary key,
    IdProduto int foreign key references Produto(IdProduto),
    IdColaborador int foreign key references Colaborador(IdColaborador)
);
Create table Receita(
    IdReceita int identity primary key,
    NomeReceita varchar (255) not null,
    ImgReceita varchar (255) not null,
    DescricaoIngrediente text not null,
    DescricaoPreparo text not null,
    IdUsuario int foreign key references Usuario(IdUsuario)
);
Create table ReservaProduto(
    IdReserva int identity primary key,
    Quantidade decimal not null,
    IdProduto int foreign key references Produto(IdProduto),
    IdUsuario int foreign key references Usuario(IdUsuario)
);