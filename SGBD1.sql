CREATE DATABASE AMDARIS;
USE AMDARIS;

CREATE TABLE Angajati (
    ID_Angajat INT PRIMARY KEY IDENTITY(1,1),
    Nume VARCHAR(255) NOT NULL,
    Prenume VARCHAR(255),
    DataAngajarii DATE,
    Salariu MONEY
);

CREATE TABLE Proiecte (
    ID_Proiect INT PRIMARY KEY IDENTITY(1,1),
    NumeProiect VARCHAR(255) NOT NULL,
    Descriere TEXT,
    DataStart DATE,
    DataFinal DATE
);

CREATE TABLE Clienti (
    ID_Client INT PRIMARY KEY IDENTITY(1,1),
    NumeClient VARCHAR(255) NOT NULL,
    Adresa VARCHAR(255),
    Telefon VARCHAR(15)
);

CREATE TABLE Sarcini (
    ID_Sarcina INT PRIMARY KEY IDENTITY(1,1),
    DescriereTask TEXT,
    DataStartTask DATE,
    DataFinalTask DATE,
    AngajatID INT FOREIGN KEY REFERENCES Angajati(ID_Angajat),
    ProiectID INT FOREIGN KEY REFERENCES Proiecte(ID_Proiect),
	ClientID INT FOREIGN KEY REFERENCES Clienti(ID_Client)
);

CREATE TABLE Departamente (
    ID_Departament INT PRIMARY KEY IDENTITY(1,1),
    NumeDepartament VARCHAR(255) NOT NULL,
    ManagerID INT FOREIGN KEY REFERENCES Angajati(ID_Angajat)
);

INSERT INTO Angajati (Nume, Prenume, DataAngajarii, Salariu)
VALUES
    ('Smith', 'John', '2020-01-15', 45000.00),
    ('Johnson', 'Jane', '2019-05-20', 52000.00),
    ('Williams', 'Robert', '2021-03-10', 60000.00),
    ('Brown', 'Maria', '2018-08-03', 48000.00),
    ('Jones', 'Michael', '2017-11-25', 55000.00),
    ('Davis', 'Emily', '2022-02-12', 51000.00),
    ('Miller', 'David', '2016-06-30', 58000.00),
    ('Wilson', 'Sarah', '2019-09-17', 52000.00),
    ('Moore', 'Daniel', '2020-07-08', 49000.00),
    ('Taylor', 'Laura', '2021-12-05', 54000.00),
    ('Anderson', 'Andrew', '2018-04-02', 59000.00),
    ('Thomas', 'Olivia', '2017-10-14', 50000.00),
    ('Jackson', 'William', '2019-01-28', 47000.00),
    ('White', 'Sophia', '2022-05-03', 56000.00),
    ('Harris', 'Joseph', '2016-11-09', 61000.00),
    ('Martin', 'Ava', '2018-12-22', 48000.00),
    ('Thompson', 'Matthew', '2020-09-01', 53000.00),
    ('Garcia', 'Emma', '2017-06-18', 57000.00),
    ('Martinez', 'James', '2019-04-07', 50000.00),
    ('Robinson', 'Liam', '2021-08-11', 49000.00);

INSERT INTO Proiecte (NumeProiect, Descriere, DataStart, DataFinal)
VALUES
    ('Proiect 1', 'Descriere proiect 1', '2022-01-10', '2022-03-15'),
    ('Proiect 2', 'Descriere proiect 2', '2021-11-05', '2022-02-20'),
    ('Proiect 3', 'Descriere proiect 3', '2022-03-20', '2022-06-30'),
    ('Proiect 4', 'Descriere proiect 4', '2022-02-15', '2022-05-10'),
    ('Proiect 5', 'Descriere proiect 5', '2022-04-01', '2022-07-25'),
    ('Proiect 6', 'Descriere proiect 6', '2021-12-18', '2022-04-30'),
    ('Proiect 7', 'Descriere proiect 7', '2022-01-25', '2022-05-15'),
    ('Proiect 8', 'Descriere proiect 8', '2022-02-10', '2022-06-20'),
    ('Proiect 9', 'Descriere proiect 9', '2022-03-05', '2022-08-10'),
    ('Proiect 10', 'Descriere proiect 10', '2022-04-15', '2022-09-30'),
    ('Proiect 11', 'Descriere proiect 11', '2022-02-28', '2022-07-05'),
    ('Proiect 12', 'Descriere proiect 12', '2022-01-12', '2022-06-15'),
    ('Proiect 13', 'Descriere proiect 13', '2022-03-10', '2022-08-20'),
    ('Proiect 14', 'Descriere proiect 14', '2022-04-05', '2022-09-10'),
    ('Proiect 15', 'Descriere proiect 15', '2022-02-20', '2022-07-30'),
    ('Proiect 16', 'Descriere proiect 16', '2022-01-05', '2022-06-10'),
    ('Proiect 17', 'Descriere proiect 17', '2022-03-15', '2022-08-25'),
    ('Proiect 18', 'Descriere proiect 18', '2022-04-10', '2022-09-15'),
    ('Proiect 19', 'Descriere proiect 19', '2022-02-15', '2022-07-20'),
    ('Proiect 20', 'Descriere proiect 20', '2022-01-20', '2022-06-30');

INSERT INTO Clienti (NumeClient, Adresa, Telefon)
VALUES
    ('Client 1', 'Adresa client 1', '1234567890'),
    ('Client 2', 'Adresa client 2', '9876543210'),
    ('Client 3', 'Adresa client 3', '5551112233'),
    ('Client 4', 'Adresa client 4', '4447778888'),
    ('Client 5', 'Adresa client 5', '1112223333'),
    ('Client 6', 'Adresa client 6', '9990001111'),
    ('Client 7', 'Adresa client 7', '3334445555'),
    ('Client 8', 'Adresa client 8', '6667778888'),
    ('Client 9', 'Adresa client 9', '2223334444'),
    ('Client 10', 'Adresa client 10', '7778889999'),
    ('Client 11', 'Adresa client 11', '8889990000'),
    ('Client 12', 'Adresa client 12', '5556667777'),
    ('Client 13', 'Adresa client 13', '1112223333'),
    ('Client 14', 'Adresa client 14', '9998887777'),
    ('Client 15', 'Adresa client 15', '3332221111'),
    ('Client 16', 'Adresa client 16', '7776665555'),
    ('Client 17', 'Adresa client 17', '2221114444'),
    ('Client 18', 'Adresa client 18', '8887776666'),
    ('Client 19', 'Adresa client 19', '4445556666'),
    ('Client 20', 'Adresa client 20', '6665554444');

INSERT INTO Departamente (NumeDepartament, ManagerID)
VALUES
    ('Departament 1', 1),
    ('Departament 2', 2),
    ('Departament 3', 3),
    ('Departament 4', 4),
    ('Departament 5', 5),
    ('Departament 6', 6),
    ('Departament 7', 7),
    ('Departament 8', 8),
    ('Departament 9', 9),
    ('Departament 10', 10),
    ('Departament 11', 11),
    ('Departament 12', 12),
    ('Departament 13', 13),
    ('Departament 14', 14),
    ('Departament 15', 15),
    ('Departament 16', 16),
    ('Departament 17', 17),
    ('Departament 18', 18),
    ('Departament 19', 19),
    ('Departament 20', 20);

INSERT INTO Sarcini (DescriereTask, DataStartTask, DataFinalTask, AngajatID, ProiectID, ClientID)
VALUES
    ('Sarcina 1', '2022-01-10', '2022-02-15', 1, 1, 1),
    ('Sarcina 2', '2022-02-20', '2022-03-25', 2, 2, 2),
    ('Sarcina 3', '2022-03-01', '2022-04-05', 3, 3, 3),
    ('Sarcina 4', '2022-04-10', '2022-05-15', 4, 4, 4),
    ('Sarcina 5', '2022-05-20', '2022-06-25', 5, 5, 5),
    ('Sarcina 6', '2022-06-30', '2022-08-05', 6, 6, 6),
    ('Sarcina 7', '2022-08-10', '2022-09-15', 7, 7, 7),
    ('Sarcina 8', '2022-09-20', '2022-10-25', 8, 8, 8),
    ('Sarcina 9', '2022-10-30', '2022-11-05', 9, 9, 9),
    ('Sarcina 10', '2022-11-10', '2022-12-15', 10, 10, 10),
    ('Sarcina 11', '2022-12-20', '2023-01-25', 11, 11, 11),
    ('Sarcina 12', '2023-01-30', '2023-02-05', 12, 12, 12),
    ('Sarcina 13', '2023-02-10', '2023-03-15', 13, 13, 13),
    ('Sarcina 14', '2023-03-20', '2023-04-25', 14, 14, 14),
    ('Sarcina 15', '2023-04-30', '2023-06-05', 15, 15, 15),
    ('Sarcina 16', '2023-06-10', '2023-07-15', 16, 16, 16),
    ('Sarcina 17', '2023-07-20', '2023-08-25', 17, 17, 17),
    ('Sarcina 18', '2023-08-30', '2023-09-05', 18, 18, 18),
    ('Sarcina 19', '2023-09-10', '2023-10-15', 19, 19, 19),
    ('Sarcina 20', '2023-10-20', '2023-11-25', 20, 20, 20);

CREATE VIEW SarciniInFebruarie AS
	SELECT s.ID_Sarcina, s.DescriereTask, s.DataStartTask, s.DataFinalTask,
		a.Nume AS NumeAngajat, a.Prenume AS PrenumeAngajat, p.NumeProiect AS NumeProiect,
		c.NumeClient AS NumeClient
	FROM Sarcini s JOIN Angajati a ON s.AngajatID = a.ID_Angajat
		JOIN Proiecte p ON s.ProiectID = p.ID_Proiect
		JOIN Clienti c ON s.ClientID = c.ID_Client
	WHERE
    MONTH(s.DataStartTask) = 2;

	
CREATE VIEW AngajatiDupa2019 AS
	SELECT ID_Angajat, Nume, Prenume, DataAngajarii, Salariu
	FROM Angajati
	WHERE YEAR(DataAngajarii) > 2019;

CREATE LOGIN Eugeniu WITH PASSWORD='parola1'
CREATE USER user1 FOR LOGIN Eugeniu

CREATE ROLE DadaBaser
GRANT DadaBaser TO user1

IF OBJECT_ID('scalar1') is not null
   	DROP FUNCTION scalar1
GO
CREATE FUNCTION scalar1()
RETURNS CHAR(20)
AS
	BEGIN
		RETURN (SELECT Nume FROM Angajati 
		WHERE Salariu = (SELECT MAX(Salariu) FROM Angajati))
	END

	PRINT dbo.scalar1()

IF OBJECT_ID('table1') is not null    
   	DROP FUNCTION table1
GO
CREATE FUNCTION table1()
RETURNS TABLE
AS
    	RETURN (SELECT * FROM Sarcini WHERE YEAR(DataFinalTask) < 2023)
GO

SELECT * FROM table1()


DROP FUNCTION IF EXISTS multi 
CREATE FUNCTION multi(@Id_client INT)
RETURNS @tabel TABLE(IdClient INT, zile INT)
AS 
	BEGIN
		RETURN
   	INSERT @tabel
   	SELECT ID_Client, DATEDIFF(d, DataStartTask, DataFinalTask)
   	FROM Clienti c JOIN Sarcini s ON c.ID_Client = s.ClientID
   	WHERE c.ID_Client =@Id_client
	RETURN
	END
	
	SELECT * FROM dbo.multi(15)

--Crearea a 2 sinonime.
CREATE SYNONYM syn1  
FOR Parinti.Nume_intretinut; 

CREATE SYNONYM syn2
FOR Parinti.Nume;

--Crearea unei scheme si mutarea unor obiecte create în ea
CREATE SCHEMA BestSchema

ALTER SCHEMA BestSchema TRANSFER Parinti
ALTER SCHEMA BestSchema TRANSFER Dat	e_personal
ALTER SCHEMA BestSchema TRANSFER Date_departament


--Crearea unei proceduri de schimbare a datelor
CREATE PROCEDURE Adauga_data
@pret_primire INT AS
BEGIN
UPDATE imprimante
SET pret_primire=@pret_primire, venit=@pret_primire*0.15, TVA=@pret_primire*0.18
END

EXEC Adauga_col
EXEC Adauga_data 100
SELECT * FROM imprimante


--Functie care returneaza un tabel cu careva date
IF OBJECT_ID('table1') is not null    
   	DROP FUNCTION table1
GO
CREATE FUNCTION table1()
RETURNS TABLE
AS
    	RETURN (SELECT * FROM Sarcini WHERE YEAR(DataFinalTask) < 2023)
GO


CREATE LOGIN Eugeniu WITH PASSWORD='parola1'
CREATE USER user1 FOR LOGIN Eugeniu

CREATE ROLE DadaBaser
GRANT DadaBaser TO user1

CREATE INDEX i1
ON pc_uri(Cod, Model, Viteza, Ram, Hd, Cd, Pret)

--Crearea unei tranzactii de actualizare a datelor 
BEGIN TRANSACTION Tran4
UPDATE Angajati
SET Taxe_retinute = Salariu_calculat * 0.18
SAVE TRANSACTION s2
UPDATE Angajati
SET Salariu_achitat = Salariu_calculat - Taxe_retinute
SAVE TRANSACTION s3
COMMIT TRANSACTION Tran4


