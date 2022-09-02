CREATE DATABASE "Los Almacenes"

use "Los Almacenes"

--Crear las tablas con sus columnas
create table Almacenes (Codigo int identity(0,1) not null, Lugar nvarchar(180) not null, Capacidad int not null);

create table Cajas (NumeroReferencia char(5) not null, Contenido nvarchar(100) not null, Valor int not null, Almacen int not null);

--LLaves
alter table Almacenes add constraint PK_Codigo primary key (Codigo);
alter table Cajas add constraint PK_Numero_Refe primary key (NumeroReferencia);

alter table Cajas add constraint FK_Almacen foreign key (Almacen) references Almacenes (Codigo);

--Agregar datos 20 minimo
insert into Almacenes (Lugar, Capacidad) values('Durango', 500);
insert into Almacenes (Lugar, Capacidad) values('Mexico', 326);
insert into Almacenes (Lugar, Capacidad) values('Zacatecas', 320);
insert into Almacenes (Lugar, Capacidad) values('Sonora', 111);
insert into Almacenes (Lugar, Capacidad) values('Coahila', 122);
insert into Almacenes (Lugar, Capacidad) values('Chihuahua', 94);
insert into Almacenes (Lugar, Capacidad) values('Baja Clifornia Norte', 325);
insert into Almacenes (Lugar, Capacidad) values('Baja California Sur', 121);
insert into Almacenes (Lugar, Capacidad) values('Nuevo Leon', 87);
insert into Almacenes (Lugar, Capacidad) values('Chiapas', 654);
insert into Almacenes (Lugar, Capacidad) values('Oxaca', 320);
insert into Almacenes (Lugar, Capacidad) values('DF', 32);
insert into Almacenes (Lugar, Capacidad) values('Tampico', 98);
insert into Almacenes (Lugar, Capacidad) values('Mazatlan', 780);
insert into Almacenes (Lugar, Capacidad) values('Nayarit', 500);
insert into Almacenes (Lugar, Capacidad) values('Guanajuato', 100);
insert into Almacenes (Lugar, Capacidad) values('Texas', 870);
insert into Almacenes (Lugar, Capacidad) values('Nueva Orleans', 120);
insert into Almacenes (Lugar, Capacidad) values('Tamaulipas', 200);
insert into Almacenes (Lugar, Capacidad) values('Aguas Calientes', 900);

Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11111, 'Teclados', 150, 0);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11130, 'Lamparas', 148, 19);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11112, 'Mouses', 130, 2);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11113, 'Ordenadores', 100, 1);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11114, 'Aires Comprimido', 250, 3);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11115, 'Fundas C', 190, 8);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11116, 'USBs', 430, 7);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11117, 'Iphones X', 90, 10);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11118, 'Celulares SamsungA10', 50, 4);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11119, 'Audifonos', 190, 18);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11120, 'Protectores de pantalla', 600, 9);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11121, 'Soportes', 40, 16);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11122, 'Trapos', 256, 11);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11123, 'Cargadores tipo C', 165, 15);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11124, 'Cables Ethernet', 320, 14);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11125, 'Herramientas de limpieza', 111, 5);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11126, 'Tarjetas Madre', 140, 13);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11127, 'Alfombrillas para Mouse', 320, 6);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11128, 'Alfombrillas de escritorio', 350, 12);
Insert into Cajas (NumeroReferencia, Contenido, Valor, Almacen) values (11129, 'Fundas para ordenadores', 198, 17);

select * from Almacenes
select * from Cajas
---------> Ejercicios <---------

--1.Obtener todos los almacenes
select * from Almacenes

--2.Obtener todas las cajas cuyo contenido tenga un valor superior a 150 bs.
select * from Cajas where Valor>150

--3.Obtener los tipos de contenidos de las cajas. distint es para que no se repitan los valores
select Contenido from Cajas 

--4.Obtener el valor medio de todas las cajas.
select avg(Valor) 'Valor Medio C' from Cajas

--5.Obtener el valor medio de las cajas de almacen.
select Almacen, avg(Valor) 'Valor Medio CA' from Cajas group by Almacen

--6. Obtener los codigos de los almacenes en los cuales el valor medio de las cajas sea superior a 150 bs.
select Almacen, avg(Valor) 'Valor Medio' from Cajas group by Almacen having avg(Valor) > 150
