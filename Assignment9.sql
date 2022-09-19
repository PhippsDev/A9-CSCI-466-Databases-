DROP TABLE IF EXISTS SuppliedParts;
DROP TABLE IF EXISTS Parts;
DROP TABLE IF EXISTS Suppliers;
CREATE TABLE Suppliers(
  Supplier VARCHAR(20) NOT NULL,
  SName VARCHAR(20) NOT NULL,
  SStatus VARCHAR(20) NOT NULL,
  City VARCHAR(20) NOT NULL,
  PRIMARY KEY (Supplier));
  
INSERT INTO Suppliers
(Supplier, SName, SStatus, City)
VALUES('S1', 'Smith', '20', 'London'),
('S2','Jones', '10', 'Paris'),
('S3','Blake', '30', 'Paris'),
('S4','Clark', '20', ' London'),
('S5','Adams', '30', 'Athens');


DESCRIBE Suppliers;
SELECT * FROM Suppliers;
  
CREATE TABLE Parts(
  Part VARCHAR(20) NOT NULL,
  PName VARCHAR(20) NOT NULL,
  Color VARCHAR(20) NOT NULL,
  Weight VARCHAR(20) NOT NULL,
  PRIMARY KEY (Part));

INSERT INTO Parts
(Part, PName, Color, Weight)
VALUES('P1', 'Nut', 'Red', '12'),
('P2','Bolt', 'Green', '17'),
('P3','Screw', 'Blue', '17'),
('P4','Screw', 'Red', '14'),
('P5','Cam', 'Blue', '12'),
('P6','Cog', 'Red', '19');


DESCRIBE Parts;
SELECT * FROM Parts;
  
CREATE TABLE SuppliedParts(
  Supplier VARCHAR(20),
  Part VARCHAR(20),
  QTY INT NOT NULL,
  FOREIGN KEY (Supplier) REFERENCES Suppliers(Supplier),
  FOREIGN KEY (Part) REFERENCES Parts(Part));
  
INSERT INTO SuppliedParts
(Supplier, Part, QTY)
VALUES('S1', 'P1', '300'),
('S1', 'P2','200'),
('S1', 'P3','400'),
('S1', 'P4','200'),
('S1', 'P5','100'),
('S1', 'P6','100'),
('S2', 'P1','300'),
('S2', 'P2','400'),
('S3', 'P3','200'),
('S4', 'P4','200'),
('S4', 'P5','300'),
('S4', 'P6','400');
 
DESCRIBE SuppliedParts;
SELECT * FROM SuppliedParts;