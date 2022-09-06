create database InformaticaStore

use InformaticaStore


---Creacion de tablas
create table Fabricantes (Codigo int not null identity(1,1), Nombre nvarchar(100) not null);
create table Articulos (Codigo int not null identity(1,1), Nombre nvarchar(100) not null, Precio int null, Fabricante int null);

--Creacion de llaves
alter table Fabricantes add constraint PK_Codigo primary key (Codigo)
alter table Articulos add constraint PK_Codigo_A primary key (Codigo)

alter table Articulos add constraint FK_Codigo_A foreign key (Fabricante) references Fabricantes (Codigo)


---Agregar datos a las tablas minimo 20 registros 
insert into Fabricantes(Nombre) VALUES ('Soriana')
insert into Fabricantes(Nombre) VALUES ('Bodega')
insert into Fabricantes(Nombre) VALUES ('Sams')
insert into Fabricantes(Nombre) VALUES ('Asus')
insert into Fabricantes(Nombre) VALUES ('Corsair')
insert into Fabricantes(Nombre) VALUES ('Compal')
insert into Fabricantes(Nombre) VALUES ('epson')
insert into Fabricantes(Nombre) VALUES ('Industria SA')
insert into Fabricantes(Nombre) VALUES ('Walmart')
insert into Fabricantes(Nombre) VALUES ('Dell')
insert into Fabricantes(Nombre) VALUES ('Hp')
insert into Fabricantes(Nombre) VALUES ('Lenovo')
insert into Fabricantes(Nombre) VALUES ('MSI')
insert into Fabricantes(Nombre) VALUES ('Zotac')
insert into Fabricantes(Nombre) VALUES ('Acer')
insert into Fabricantes(Nombre) VALUES ('Huawei')
insert into Fabricantes(Nombre) VALUES ('Intel')
insert into Fabricantes(Nombre) VALUES ('AMD')
insert into Fabricantes(Nombre) VALUES ('Samsung')
insert into Fabricantes(Nombre) VALUES ('Sony')

insert into Articulos (Nombre, Precio, Fabricante) VALUES ('PC', 10000, 1)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Proyector', 3000, 2)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Bocina', 2000, 20)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Teclado', 300, 3)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('USB', 50, 5)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Laptop', 5000, 6)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Impresora', 3000, 7)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('PC', 9000, 11)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Laptop', 6000, 8)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Router', 600, 12)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Monitor', 5000, 13)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Router', 500, 14)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Gabinete', 1000, 9)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Grafica', 3000, 10)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Proyector', 5000, 15)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Celular', 7000, 16)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Procesador', 6000, 17)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Procesador', 5000, 18)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Mouse', 200, 4)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Celular', 8000, 19)

insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Fundas', 60, 1)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Protectores de pantalla', 100, 8)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Pasta Termica', 120, 14)
insert into Articulos (Nombre, Precio, Fabricante) VALUES ('Silla Gamer', 78, 10)

select * from Fabricantes
select * from Articulos

---->Consultas de la base de datos <-------------- 

--1. Obtener el nombre de los productos de la tienda
select Nombre from Articulos

--2. Obtener los nombres y los precios de los productos de la tienda
select Nombre, Precio from Articulos

--3. Obtener el nombre de los productos cuyo precio sea menor o igual a 200bs.
select Nombre from Articulos where Precio <= 200

--4. Obtener todos los datos de los articulos cuyo precio este entre los 60 y los 120 bs (ambas cantidades incluidadas)
select * from Articulos where Precio >= 60 and Precio <= 120 

--5. Obtener el nombre y el precio multiplicado por 166386, la columna debe presentarse como precio_total
select Nombre, Precio*166386 'Precio_Total' from Articulos

--6. Seleccionar el precio medio de todos los productos.
select avg(Precio) 'Precio Medio' from Articulos
