---Creacion de la base de datos y seleccion

Create database Viajeros

use Viajeros


---Creacion de las tablas
create table Lugar (L_Codigo int identity(1,1) not null, L_Nombre varchar(255) not null, 
L_Tipo nvarchar(200) not null, L_Clima nvarchar(255) not null, L_Total_Habitantes int not null, L_Descripcion nvarchar(255) not null);

create table Viaje (V_Codigo int identity(1,1) not null, V_FK_Pasajero int not null, V_FK_Lugar int not null, V_Fechas date not null );

create table Pasajero (P_Codigo int identity(1,1) not null, P_Nombre nvarchar(255) not null,P_Apelllido nvarchar(255) not null, 
P_Perfil nvarchar(255) not null, P_Fecha_Nacimiento date not null, P_Numero_Telefonico bigint not null, P_FK_Lugar_Pais_Residencia int not null);


---Creacion de las llaves
alter table Lugar add constraint PK_L_Codigo primary key (L_Codigo);
alter table Viaje add constraint PK_V_Codigo primary key (V_Codigo);
alter table Pasajero add constraint PK_P_Codigo primary key (P_Codigo);

alter table Pasajero add constraint FK_Lugar_PR foreign key (P_FK_Lugar_Pais_Residencia) references Lugar (L_Codigo);

alter table Viaje add constraint FK_Lugar foreign key (V_FK_Lugar) references Lugar (L_Codigo);
alter table Viaje add constraint FK_Pasajero foreign key (V_FK_Pasajero) references Pasajero (P_Codigo);


--Agregar datos a las tablas minimo 20 registros 
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Monte Alban', 'Turisticos', 'Calido', 56300, 'Este lugar es un lugar turistico mas habitual para los amantes de la naturaleza');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Puerto Vallarta', 'Turisticos', 'Calido', 36000, 'Este lugar es un lugar turistico mas habitual para los amantes de la naturaleza y la cultura');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Cascada Tamul', 'Naturaleza', 'Calido', 50, 'Este lugar es uno de los mas hermosos ya que la cascada es una maravilla natural que se puede apreciar.');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Bosque de Chapultepec', 'Naturalesa', 'Calido', 50, 'Si te gusta estar entre la naturaleza este lugar es el idnicado ya que podras acampar');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Museo Nacional de Antropología', 'Eduactivo', 'Normal', 300, 'Este lugar es un lugar turistico mas habitual para los amantes de lo anitguo');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Iglesia de santa prisacan', 'Turisticos', 'Calido', 563, 'Este lugar es un lugar turistico mas habitual para los amantes de la religion');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Oxaca', 'Turisticos', 'Caliente', 5300, 'Este lugar es un lugar turistico mas habitual para los amantes de la cultura');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Mazatlan', 'Turisticos', 'Calido', 30300, 'Este lugar es un lugar turistico mas habitual para los amantes de la playa');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Durango', 'Turisticos', 'Fresco', 45300, 'Este lugar es un lugar turistico mas habitual para los amantes de la naturaleza y personas que buscan conocer y ver paisajes hermosos.');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Monterrey', 'Negocios', 'Muy Caliente', 506300, 'Este lugar es un lugaresta lleno de oportunidades para laborar.');

insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Houston', 'Turisticos', 'Calido', 56300, 'Este lugar es un lugar cuenta con edifiicos eneromes y lindos parques publicos.');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Las Vegas, Nevada', 'Turisticos', 'Caliente', 100000, 'Este lugar cuenta con variedad de casinos en el cual pueden asistir las personas, este lugar es un lugar de apuestas y diversion');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Nueva York', 'Turistico', 'Fresco', 230056, 'Este lugar cuenta con recoridos e barco asia la estatua de la libertad.');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Los Ángeles, sur de California', 'Turistico', 'Calido', 55300, 'Si te gusta estar entre la naturaleza este lugar es el idnicado ya que podras acampar');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Washington DC', 'Politico', 'Normal', 365200, 'Este lugar cuenta con la casa blanca y se reunen varios politicos para ejercer sus labores.');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Kansas', 'Turisticos', 'Calido', 56243, 'Este lugar es un lugar turistico mas habitual para los amantes de la nuevo');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Nueva Orlans', 'Turisticos', 'Humedo', 95300, 'Este lugar es un lugar turistico mas habitual para los amantes de la cultura y de lo paranormal ya que cuentan con tiendas y recorridos con tema de la magia vudu');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Miami', 'Turisticos', 'Caliente', 398658, 'Este lugar es un lugar turistico mas habitual para los amantes de la playa');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Canada', 'Turisticos', 'Fresco', 453600, 'Este lugar es un lugar turistico mas habitual para los amantes de la naturaleza y personas que buscan conocer y ver paisajes hermosos.');
insert into Lugar (L_Nombre, L_Tipo, L_Clima, L_Total_Habitantes, L_Descripcion) 
values ('Alaska', 'Naturaleza', 'Muy Frio', 5000, 'Este lugar es un lugar muy frio en el cual puedes hacer actividades de patinaje sobre hielo.');


insert into Pasajero (P_Nombre,P_Apelllido,P_Perfil,P_Fecha_Nacimiento,P_Numero_Telefonico,P_FK_Lugar_Pais_Residencia) 
values ('Brayan', 'Sanchez', 'Bueno', '2000-07-15', 8711338808, 1);

insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (1, 1, '2022-12-24');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (2, 4, '2020-01-04');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (3, 3, '2022-06-14');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (4, 2, '2022-01-23');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (5, 10, '2023-05-24');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (6, 9, '2020-06-26');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (7, 5, '2024-02-14');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (8, 7, '2022-04-14');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (9, 8, '2020-04-03');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (10,6, '2020-06-10');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (11, 11, '2023-08-18');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (12, 16, '2024-09-07');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (13, 12, '2024-11-08');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (14, 15, '2023-10-08');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (15, 13, '2022-08-01');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (16, 14, '2022-09-02');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (17, 18, '2020-09-03');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (18, 17, '2024-07-08');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (19, 19, '2024-07-24');
insert into Viaje (V_FK_Pasajero, V_FK_Lugar,V_Fechas) values (20, 20, '2024-12-24');

select * from Viaje
select * from Lugar
select * from Pasajero



---Consultas 

--1.Listado de todos los lugares para viajar registrados en la base de datos
select L_Nombre from Lugar

--2.Listado con el nombre y apellido de todos los pasajeros
select P_Nombre, P_Apelllido from Pasajero

--3.Seleccionar el nombre y el clima de todos los lugares
select L_Nombre, L_Clima from Lugar

--4.Mostrar el nombre, toral de habiantes de todos los lugares ademas suponer un incremento de la poblacion de cada lugar en 1000000 habitantes
select L_Nombre, L_Total_Habitantes+1000000 from Lugar 

--5.Mostrar el nombre, tipo de lugar y el numero de habitantes de cada lugar si su poblacion se doblara. Nombrar la columna com "Doble_de_habitantes"
select L_Nombre,L_Tipo, L_Total_Habitantes*2 'Doble_de_habitantes' from Lugar 

