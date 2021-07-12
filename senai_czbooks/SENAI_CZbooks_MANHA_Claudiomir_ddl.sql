CREATE DATABASE SENAI_CZBOOKS_MANHA;

USE SENAI_CZBOOKS_MANHA;

CREATE TABLE Livros
(
IdLivros INT PRIMARY KEY IDENTITY
,NomeLivros VARCHAR(100) NOT NULL
);

CREATE TABLE Categorias
(
IdCategorias INT PRIMARY KEY IDENTITY
,IdLivros INT FOREIGN KEY REFERENCES Livros(IdLivros)
,NomeHabilidade VARCHAR(100) NOT NULL
);

CREATE TABLE Acesso
(
IdAcesso INT PRIMARY KEY IDENTITY
,NomeUsuario VARCHAR(200) NOT NULL
);

CREATE TABLE Usuarios
(
IdUsuarios INT PRIMARY KEY IDENTITY
,IdAcesso INT FOREIGN KEY REFERENCES Acesso(IdAcesso)
,NomeUsuario VARCHAR(200) NOT NULL
,DataAtualizacao VARCHAR(200) NOT NULL
,DataCriacao VARCHAR(300) NOT NULL
);

CREATE TABLE Autor
(
IdUsuarios INT PRIMARY KEY IDENTITY
,IdAcesso INT FOREIGN KEY REFERENCES Acesso(IdAcesso)
,NomeUsuario VARCHAR(200) NOT NULL
,DataCriacao VARCHAR(300) NOT NULL
);


CREATE TABLE Administrador
(
IdUsuarios INT PRIMARY KEY IDENTITY
,IdAcesso INT FOREIGN KEY REFERENCES Acesso(IdAcesso)
,NomeADM VARCHAR(200) NOT NULL
,DataCriacao VARCHAR(300) NOT NULL
);
