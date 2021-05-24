--Prueba
--Creación de la base de datos.
create database LBISGE1
--Hacemos uso de la DB para la creación de tablas.
use LBISGE1

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
ID varchar(10) Primary key not null,
Descripcion varchar(1000) not null,
Cantidad varchar(10) not null,
Capacidad varchar(15) not null,
HorasDeUso varchar(5) not null,
Dias varchar(10) not null,
Consumo varchar(15) not null,
Imagen image,
ID_edificio varchar(10) not null,
ID_area varchar(10) not null,
ID_subsistema varchar(10) not null,
CONSTRAINT Fk_edificio Foreign key (ID_edificio) References Edificios (ID_edificio),
CONSTRAINT Fk_area Foreign key (ID_area) References Areas (ID_area),
CONSTRAINT Fk_subsistema Foreign key (ID_subsistema) References Subsistema (ID_subsistema)
)


