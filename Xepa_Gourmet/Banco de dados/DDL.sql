Create database XepaGourmet;
use XepaGourmet;

Create table Endereco(
    Id_Endereco int identity primary key,
    Endereco varchar (255) not null,
    Numero varchar (10) not null,
    CEP varchar (9) not null,
    Cidade varchar (255) not null,
    Bairro varchar (255) not null,
    Estado char (2) not null
);
Create table Usuario(
    Id_Usuario int identity primary key,
    Nome_Usuario varchar (255) not null,
    Email_Usuario varchar (255) unique not null,
    Senha_Usuario varchar (8),
    Receber_Notif bit DEFAULT (0),
    Tipo_Usuario varchar (11),
    Telefone_1 varchar (15),
    Telefone_2 varchar (15),
);
Create table Colaborador(
    Id_Colaborador int identity primary key,
    Img_Perfil varchar (255),
    Razao_Social varchar (50),
    Documento_Colab varchar (20),
    Faz_Entrega bit DEFAULT (0),
    Sobre_colab Text not null,
    Id_Usuario int foreign key references Usuario(Id_Usuario)
);
Create table Sobre_Produto(
    Id_Sobre_Produto int identity primary key not null,
    Sobre_Produto varchar (255),
    Disponibilidade bit DEFAULT (0),
    Organico bit DEFAULT (0),
);
Create table Produto(
    Id_Produto int identity primary key not null,
    Nome_Produto varchar (255),
    Img_Produto varchar (255),
    Id_Sobre_Produto int foreign key references Sobre_Produto(Id_Sobre_Produto)
);
Create table Registro_Produto(
    Id_Registro int identity primary key not null,
    Id_Produto int foreign key references Produto(Id_Produto),
    Id_Colaborador int foreign key references Colaborador(Id_Colaborador)
);
Create table Receita(
    Id_Receita int primary key not null,
    Nome_Receita varchar (255),
    Img_Receita varchar (255),
    Descricao_Ingrediente text not null,
    Descricao_ModoPreparo text not null,
    Id_Usuario int foreign key references Usuario(Id_Usuario)
);
Create table Reserva_Produto(
    Id_Reserva int primary key not null,
    Id_Produto int foreign key references Produto(Id_Produto),
    Id_Usuario int foreign key references Usuario(Id_Usuario)
);