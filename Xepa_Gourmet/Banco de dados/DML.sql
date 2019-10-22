INSERT INTO Usuario (Nome_Usuario, Email_Usuario, Senha_Usuario, Receber_Notificacao, Telefone_1, Telefone_2, Tipo_Usuario) VALUES
('Joao','joaodasilva@gmail.com','joazin543',1,'','','Colaborador');

INSERT INTO Endereco (Endereco, Numero, CEP, Cidade, Bairro, Estado, Id_Endereco) VALUES
('Rua Barão de Limeira','539','06453-004','São Paulo','Campos Elíseos','SP',1);

INSERT INTO Colaborador (IMG_Perfil, Razao_Social, Documento, Faz_Entrega, Sobre, Id_Usuario) VALUES
('','','',1,'',1);

INSERT INTO Receita (Nome_Receita, IMG_Receita, Descricao_Ingrediente, Descricao_ModoPreparo, Id_Usuario) VALUES
('','','','',1);

INSERT INTO SobreProduto (DescricaoProduto, Disponibilidade, Organico, Preco, Validade) VALUES
('A cenoura é uma raiz de cor alaranjada. Este legume é riquíssimo em betacaroteno, um elemento importante para a visão.','12 Kg',);

INSERT INTO Produto (NomeProduto, ImgProduto, IdSobreProduto) VALUES
('Cenoura','url/123/cenoura.jpg',1),
('Beterraba','url/143/beterraba.jpg',2),
('Batata','url/143/batata.jpg',3),
('Pepino','url/143/pepino.jpg',4);

INSERT INTO RegistroProduto (IdProduto, IdColaborador)