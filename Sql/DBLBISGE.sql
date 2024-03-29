--Creaci�n de la base de datos. (30 de Mayo)
create database DBLBISGE
--Hacemos uso de la DB para la creaci�n de tablas.
use DBLBISGE

--Creaci�n de tabla edificios, que contendra informaci�n de cada uno de los edificios a evaluar.
create table Edificios
(
ID_edificio varchar(10) Primary key not null,
NombreDeEdificio varchar(500) not null
)

--Creaci�n de tabla Areas, que contendra las areas
create table Areas
(
ID_area varchar(10) Primary key not null,
NombreDeArea varchar(500) not null,
TipoArea varchar (800) not null,
Largo varchar (10),
Ancho varchar (10),
CalcArea varchar (10),
CantidadPersonas varchar (10),
Nivel varchar (10)
)

--Creaci�n de tabla Subsistemas.
create table Subsistema
(
ID_subsistema varchar(10) Primary key not null,
NombreDeSubsistema varchar(1000) not null
)

--Creaci�n tabla Informaci�n de Area.
create table InformacionArea
(
Item int identity(1,1) Primary key not null,
Descripcion varchar(1000) not null,
CantidadPersonas varchar (10),
TipoArea varchar (800) not null,
CantidadEquipos varchar(10) not null,
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

