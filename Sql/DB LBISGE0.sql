--Creación de la base de datos.
create database LBISGE
--Hacemos uso de la DB para la creación de tablas.
use LBISGE

--Creación de tabla edificios, que contendra información de cada uno de los edificios a evaluar.
create table Edificios
(
ID_edificio varchar(10) Primary key not null,
NombreDeEdificio varchar(500) not null
)

--Creación de tabla Areas, que contendra las areas de cada edificio.
create table Areas
(
ID_area varchar(10) Primary key not null,
NombreDeArea varchar(500) not null,
ID_edificio varchar(10) Foreign Key References Edificios(ID_edificio) On Update Cascade
)

--Creación de tabla Subsistemas.
create table Subsistema
(
ID_subsistema varchar(10) Primary key not null,
NombreDeSubsistema varchar(1000) not null
)

--Creación tabla Información de Area.
create table InformacionArea
(
ID varchar(10),
Descripcion varchar(1000),
Cantidad varchar(10),
Capacidad varchar(15),
HorasDeUso varchar(5),
Dias varchar(10),
Consumo varchar(15),
Imagen image,
ID_edificio varchar(10) Foreign Key References Edificios(ID_edificio) On delete no action On Update no action,
ID_area varchar(10) Foreign Key References Areas(ID_area) On delete no action On Update no action,
ID_subsistema varchar(10) Foreign Key References Subsistema(ID_subsistema) On delete no action On Update no action
)