create database Empleado

use Empleado

--Creacion de las tablas
create table Departamentos (Codigo int not null, Nombre nvarchar(100) not null, Presupuesto int not null)
create table Empleados (DNI varchar(8) not null, Nombre nvarchar(100) not null, Apellidos nvarchar(255) not null, Departamento int not null)


--Creacion de las llaves
alter table Departamentos add constraint PK_Codigo primary key(Codigo)
alter table Empleados add constraint PK_DNI primary key (DNI)

alter table Empleados add constraint FK_Departamento foreign key (Departamento) references Departamentos(Codigo)

--Agregar datos a las tablas minimo 20 registros
insert into Departamentos (Codigo, Nombre, Presupuesto) values (10, 'A', 1500)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (2, 'B', 2342)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (23, 'C', 6354)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (15, 'D', 3265)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (5, 'F', 1206)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (1, 'G', 5466)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (7, 'H', 1500)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (9, 'I', 5465)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (26, 'J', 1500)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (28, 'K', 1524)

insert into Departamentos (Codigo, Nombre, Presupuesto) values (24, 'L', 1524)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (11, 'M', 1024)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (50, 'N', 6548)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (32, 'Ñ', 98775)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (14, 'O', 65468)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (57, 'P', 6546)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (47, 'Q', 1500)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (77, 'R', 1024)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (27, 'S', 6568)
insert into Departamentos (Codigo, Nombre, Presupuesto) values (37, 'T', 6546)


insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12345, 'Esteban', 'Lopez', 1)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12346, 'Harry', 'Escobedo', 2)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12347, 'Arly', 'Rodriguez', 5)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12348, 'Gerardo', 'Salas', 7)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12349, 'Luis', 'Solem', 9)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12350, 'Aron', 'Lopez', 10)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12354, 'Mauricio', 'Rodriguez', 11)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12351, 'Hill', 'Lopez', 14)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12353, 'Luz', 'Salas', 15)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12352, 'Jean', 'Escobedo', 23)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12355, 'Israel', 'Salas', 24)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12356, 'Manuel', 'Lopez', 26)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12357, 'Victor', 'Solem', 27)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12358, 'Roberto', 'Perez', 28)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12359, 'Estefania', 'Salas', 32)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12360, 'Brayan', 'Lopez', 37)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12361, 'Osvaldo', 'Perez', 47)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12362, 'Marlene', 'Escobedo', 50)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12363, 'Fabiola', 'Lopez', 57)
insert into Empleados (DNI, Nombre, Apellidos, Departamento) values (12364, 'Andres', 'Perez', 77)



SELECT * FROM Departamentos
select * from Empleados
--------> Consultas de la base de datos <--------------

--1. Obtener los apellidos de los empleados
select Apellidos from Empleados

--2. Obtener los apellidos de los empleados sin repeticiones
select distinct Apellidos from Empleados 

--3. Obtener todos los datos de los empleados que se apellidan 'Lopez'
select * from Empleados where Apellidos like 'Lopez'

--4. Obtener todos los datos de los empelados que se apellidan 'Lopez' y los que se apellidan 'Perez'.
select * from Empleados where Apellidos ='Lopez' or  Apellidos = 'Perez'

select * from Empleados where Apellidos like 'Lopez' or Apellidos like 'Perez'

--5. Obtener todos los datos de los empleados que trabajan en el departamento 14
select * from Empleados where Departamento = 14

--6. Obtener todos los datos de los empleados que trabajan para el departamento 37 y para el depàrtamento 77
select * from Empleados where Departamento = 37 or Departamento = 77

--7. Obtener todos los datos de los empleados cuyo apellido comience por 'P'
select * from Empleados where Apellidos like 'P%'


--8. Obtener el presupuestp total de todos los departamentos.
select sum(Presupuesto) 'Total de Departamentos' from Departamentos