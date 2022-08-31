--Crea la base de datos
create database Directores;

--Se usa para seleccionar la base de datos
use Directores;

--Crear las tablas con sus columnas
create table Directores (DNI varchar(8) not null, NomApels nvarchar(255) not null, DNIJefe varchar(8) null, Despacho int not null);

create table Despachos (Numero int identity(0,1) not null, Capacidad int not null);


------->Colocación de las llaves foráneas y primarias después de haber creado las tablas

---------------------------PRIMARY KEYS--------------------------------------------

  ALTER TABLE Despachos ADD CONSTRAINT PK_Numero PRIMARY KEY (Numero);

  alter table Directores add constraint PK_DNI primary key (DNI);

  -----------------FOREIGN KEYS-----------------------------------------------

  ALTER TABLE Directores
  ADD CONSTRAINT FK_Despacho
  FOREIGN KEY (Despacho) REFERENCES Despachos (Numero);

  --Insertar datos a las tablas

  insert into Despachos (Capacidad) values (50)
  insert into Despachos (Capacidad) values (29)
  insert into Despachos (Capacidad) values (2)
  insert into Despachos (Capacidad) values (28)
  insert into Despachos (Capacidad) values (22)
  insert into Despachos (Capacidad) values (82)
  insert into Despachos (Capacidad) values (10)
  insert into Despachos (Capacidad) values (27)
  insert into Despachos (Capacidad) values (5)
  insert into Despachos (Capacidad) values (23)
  insert into Despachos (Capacidad) values (12)
  insert into Despachos (Capacidad) values (41)
  insert into Despachos (Capacidad) values (78)
  insert into Despachos (Capacidad) values (82)
  insert into Despachos (Capacidad) values (10)
  insert into Despachos (Capacidad) values (27)
  insert into Despachos (Capacidad) values (15)
  insert into Despachos (Capacidad) values (23)

  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (1234, 'Victor Manuel Nuñez Salas', 123458, 0)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (124, 'Victor Salas', 1258, 0)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (1284, 'Pablo Gomez Torres', 105478,10)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (1236, 'Esequiel Chavez',51895, 5)
  insert into Directores (DNI, NomApels, Despacho) values (25464,'Fernando Salas', 11)
  insert into Directores (DNI, NomApels, Despacho) values (125689, ' Maribel Serrato Salazar', 8)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (6789546, 'Raul Nuñez Guerrero', 32156878, 6)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (02135698, 'Solem Rodriguez', 6549874, 9)
  insert into Directores (DNI, NomApels, Despacho) values (12458976, 'Critina Lopez Garcia', 7)
  insert into Directores (DNI, NomApels, Despacho) values (16587945, 'Antonio Lopez', 1)
  insert into Directores (DNI, NomApels, Despacho) values (1254879, 'Juan Manuel Lopez', 4)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (325068, 'Lidia Perez', 54021365, 12)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (654102, 'Paola Sanchez', 3216545, 13)
  insert into Directores (DNI, NomApels, Despacho) values (78945623, 'Alicia Castaleda',2)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (08765487, 'Ruby Nuñez Salas', 654897, 18)
  insert into Directores (DNI, NomApels, Despacho) values (1587956, 'Santiago Lopez Perez', 3)

  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (87459, 'Maria Sanchez', 870200, 17)
  insert into Directores (DNI, NomApels, Despacho) values ( 1123563, ' Antonio Salas' , 15)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values (98745623, 'Manuel Anuel', 364985, 14)
  insert into Directores (DNI, NomApels, DNIJefe, Despacho) values ( 0125463, 'Anuel AA', 60033365, 16)
  

  --Mostrar toda la tabla
  select * from Despachos
  select * from Directores

  --Eliminar una tabla DROP TABLE Directores


  ------------> CONSULTAS A RESOLVER <-----------
  
  ---Mostrar el DNI, Nombre y apellidos de todos los directores
  select DNI, NomApels from Directores

  ---Mostrar los datos de los directores que no tienen jefes
  select DNI, NomApels, Despacho from Directores where DNIJefe is null

  ---Mostrar el nombre y apellidos de cada director, junto con la capacidad del despacho en el que se encuentra
  select NomApels, Capacidad from Directores inner join Despachos on Directores.Despacho = Despachos.Capacidad

  ---Mostrar el numero de directores que hay en cada despacho
  select Despacho, count(*) 'Directores'
  from Directores group by Despacho

