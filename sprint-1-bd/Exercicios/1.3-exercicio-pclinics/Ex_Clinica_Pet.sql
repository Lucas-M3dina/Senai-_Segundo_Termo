CREATE DATABASE PCLINICS;
GO


USE PCLINICS;
GO


CREATE TABLE Clinica(
	idClinica TINYINT PRIMARY KEY IDENTITY(1,1),
	endereco VARCHAR(40),
);
GO


CREATE TABLE Veterinario(
	idVeterinario TINYINT PRIMARY KEY IDENTITY(1,1),
	idClinica TINYINT FOREIGN KEY REFERENCES Clinica (idClinica),
	nomeVeterinario VARCHAR(30),
);
GO


CREATE TABLE Pet(
	idPet TINYINT PRIMARY KEY IDENTITY(1,1),
	nomePet VARCHAR(20),
);


CREATE TABLE Consulta(
	idConsulta TINYINT PRIMARY KEY IDENTITY(1,1),
	idVeterinario TINYINT FOREIGN KEY REFERENCES Veterinario (idVeterinario),
	idPet TINYINT FOREIGN KEY REFERENCES Pet (idPet),
	dataConsulta VARCHAR(8),
	nomeVeterinario VARCHAR(30),
	pet VARCHAR(30),
);











CREATE TABLE Genero(
	idGenero TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeGenero VARCHAR(30),
);
GO

--- Alt + F1 com a tabela adicionada para analisa-la

CREATE TABLE Filmes(
	idFilme SMALLINT PRIMARY KEY IDENTITY(1,1),
	idGenero TINYINT FOREIGN KEY REFERENCES Genero (idGenero),
	tituloFilme VARCHAR(50)
);
GO