CREATE DATABASE prueba2;
USE prueba2;

CREATE TABLE IF NOT EXISTS Dueno
 (
 DNI INT primary key not null,
 Nombre VARCHAR(20)not null,
 Apellido VARCHAR(30)not null,
 Direccion VARCHAR(80)not null,
 Telefono VARCHAR(25)not null);

CREATE TABLE IF NOT EXISTS Perro
 (
 id_perro int primary key not null auto_increment,
 Nombre VARCHAR(20)not null,
 Fecha_nac DATE not null,
 sexo VARCHAR(10)not null,
 Dueno_DNI INT,
 constraint fk_Dueno 
 foreign key (dueno_DNI) 
 references prueba2.dueno(DNI)
 on delete no action
 on update no action
 );

 CREATE TABLE IF NOT EXISTS Historial
 (
 ID_Historial int primary key not null auto_increment,
 Fecha DATE not null,  
 Perro varchar(20)not null,
 Descripcion VARCHAR(50)not null,
 Monto FLOAT not null,
 Perro_id_perro INT,
 constraint fk_Perro 
 foreign key (Perro_id_perro) 
 references prueba2.perro(id_perro)
 on delete no action
 on update no action
 );

INSERT INTO Dueno  
VALUES  
('36278524','Rosa','Vazquez','Montes de Oca 25','3512482601'),
('25379848','Pedro','Martin','Sevilla 96','3514732323'), 
('41278524','Juan','Sanchez','Mariano Moreno','3513514826979'),
('8323112','Rita','Gigena','Pedro Lamarca109','3514256888'), 
('17524813','Liliana','Oporto','Lavalleja','3515268019'); 

INSERT INTO Perro (id_perro, Nombre, Fecha_Nac, sexo)
VALUES  
('1','Manchas','20200202','Macho'),
('2','Lula','20190319','Hembra'),
('3','Tutuca','20211011','Macho'),
('4','Pili','20180506','Hembra'),
('5','Carlos','20220103','Macho');

INSERT INTO Historial (ID_Historial,Fecha,Perro,Descripcion,Monto) VALUES  
('1','20220625','Lula','corte y lavado','556.99'),
('2','20220626','Manchas','corte y lavado','556.99'),
('3','20220627','Tutuca','corte y lavado y secado','995.50'),
('4','20220628','Pili','corte y peindado','774.99'),
('5','20220629','Carlos','corte lavado secado y peinado','1556.99');

 SELECT* FROM Dueno
 SELECT* FROM Historial
 SELECT* FROM PERRO
 SELECT* FROM dueno
 
 UPDATE Dueno
 SET Direccion="Libertad 123"
 WHERE DNI=36278524
 
 SELECT* FROM Dueno
 