

CREATE TABLE Empresa(
	idEmpresa TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeEmpresa VARCHAR(30),
);
GO


CREATE TABLE Veiculo(
	idVeiculo TINYINT PRIMARY KEY IDENTITY(1,1),
	idEmpresa TINYINT FOREIGN KEY REFERENCES Empresa (idEmpresa),
	placa VARCHAR(30),
);
GO


CREATE TABLE Modelo(
	idModelo TINYINT PRIMARY KEY IDENTITY(1,1),
	idVeiculo TINYINT FOREIGN KEY REFERENCES Veiculo (idVeiculo),
	nomeModelo VARCHAR(30),
	anoModelo VARCHAR(4),
);
GO


CREATE TABLE Marca(
	idMarca TINYINT PRIMARY KEY IDENTITY(1,1),
	idModelo TINYINT FOREIGN KEY REFERENCES Modelo (idModelo),
	nomeMarca VARCHAR(30),
);
GO


CREATE TABLE Cliente(
	idCliente TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeCliente VARCHAR(30),
);
GO


CREATE TABLE Aluguel(
	idAluguel TINYINT PRIMARY KEY IDENTITY(1,1),
	idVeiculo TINYINT FOREIGN KEY REFERENCES Veiculo (idVeiculo),
	idCliente TINYINT FOREIGN KEY REFERENCES Cliente (idCliente),
	nomeCliente VARCHAR(30),
	Carro VARCHAR(30),
	dataAluguel VARCHAR(8),
);
GO


