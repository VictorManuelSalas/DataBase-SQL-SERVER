create database Pelis

use Pelis

--Creacion de las tablas
create table Peliculas (Codigo int identity(1,1) not null, Nombre nvarchar(100) not null, CalificacionEdad int null);
create table Salas (Codigo int identity(1,1) not null, Nombre nvarchar(100) not null, Pelicula int null);

--Creacion de las llaves
alter table Peliculas add constraint PK_Codigo_P primary key (Codigo);
alter table Salas add constraint PK_Codigo_S primary key (Codigo)

alter table Salas add constraint FK_Pelicula foreign key (Pelicula) references Peliculas (Codigo)


--LLenado de datos de las tablas minumo 20 registros 
insert into Peliculas (Nombre, CalificacionEdad) values ('Toy Story', 4);
insert into Peliculas (Nombre, CalificacionEdad) values ('Toy Story2', 4);
insert into Peliculas (Nombre, CalificacionEdad) values ('Toy Story3', 8);
insert into Peliculas (Nombre, CalificacionEdad) values ('Toy Story4', 9);
insert into Peliculas (Nombre, CalificacionEdad) values ('Chuky 1', 15);
insert into Peliculas (Nombre, CalificacionEdad) values ('La novia de chuky', 18);
insert into Peliculas (Nombre, CalificacionEdad) values ('Tarzan', 10);
insert into Peliculas (Nombre) values ('Malefica');
insert into Peliculas (Nombre) values ('Halloween');
insert into Peliculas (Nombre, CalificacionEdad) values ('Terror en la montaña', 18);
insert into Peliculas (Nombre, CalificacionEdad) values ('Crepusculo', 15);
insert into Peliculas (Nombre, CalificacionEdad) values ('Amanecer', 17);
insert into Peliculas (Nombre) values ('Tarzan 2');
insert into Peliculas (Nombre) values ('Rapidos y Furiosos');
insert into Peliculas (Nombre, CalificacionEdad) values ('En la tierra como en el infierno', 18);
insert into Peliculas (Nombre, CalificacionEdad) values ('Canivales', 18);
insert into Peliculas (Nombre, CalificacionEdad) values ('Sabrina', 10);
insert into Peliculas (Nombre) values ('Halloween 2');
insert into Peliculas (Nombre) values ('En la Profundiad');
insert into Peliculas (Nombre, CalificacionEdad) values ('Laverinto del Fauno', 15);


insert into Salas (Nombre, Pelicula) values ('A1', 1);
insert into Salas (Nombre, Pelicula) values ('B1', 2);
insert into Salas (Nombre, Pelicula) values ('C1', 3);
insert into Salas (Nombre, Pelicula) values ('A2', 4);
insert into Salas (Nombre) values ('B2');
insert into Salas (Nombre) values ('C2');
insert into Salas (Nombre) values ('A3');
insert into Salas (Nombre, Pelicula) values ('B3', 5);
insert into Salas (Nombre, Pelicula) values ('C3', 6);
insert into Salas (Nombre, Pelicula) values ('A4', 8);
insert into Salas (Nombre, Pelicula) values ('B4', 11);
insert into Salas (Nombre) values ('C4');
insert into Salas (Nombre) values ('A5');
insert into Salas (Nombre, Pelicula) values ('B5', 15);
insert into Salas (Nombre, Pelicula) values ('C5', 14);
insert into Salas (Nombre, Pelicula) values ('A6', 19);
insert into Salas (Nombre, Pelicula) values ('B6', 20);
insert into Salas (Nombre, Pelicula) values ('C6', 10);
insert into Salas (Nombre) values ('A7');
insert into Salas (Nombre) values ('B7');

select * from Salas
select * from Peliculas
---------------------> Ejercicios <------------------

--1.Mostrar el nombre de todas las peliculas
select Nombre from Peliculas

--2.Mostrar las distintas calificaciones de eddad que existen
select distinct CalificacionEdad from Peliculas 

--3.Mostrar todas las peliculas que no han sido calificadas.
select * from Peliculas where CalificacionEdad is null

--4.Mostrar todas las salas que no proyecten ninguna pelicula.
select * from Salas where Pelicula is null

--5.Mostrar la informacion de todas las salas y si se proyectan alguna pelicula en la salas, mostrar tambien la informacion de la pelicula
select * from Salas left join Peliculas on Salas.Pelicula = Peliculas.Codigo