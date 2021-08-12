USE LOCADORA;

INSERT INTO Empresa (nomeEmpresa)
VALUES ('Cider'), ('Aluvel');
GO

INSERT INTO Modelo  (nomeModelo, anoModelo)
VALUES ('ONIX', '2018'), ('HB20', '2020');
GO

INSERT INTO Veiculo(idModelo, idEmpresa, placa)
VALUES (1, 1,'J5G4ED3W'), (2, 2,'K2DE39OD');
GO

INSERT INTO Marca(nomeMarca)
VALUES (1, 1,'J5G4ED3W'), (2, 2,'K2DE39OD');
GO



