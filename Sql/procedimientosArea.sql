--Procedimiento almacenado para insertar datos
create procedure pr_insertArea
@IDareapr varchar(10),
@nombreAreapr varchar(500),
@TipoAreapr varchar (800),
@Largopr varchar (10),
@Anchopr varchar (10),
@CalcAreapr varchar (10)
as
insert into Areas(ID_area, NombreDeArea, TipoArea, Largo, Ancho, CalcArea) values (@IDareapr, @nombreAreapr, @TipoAreapr, @Largopr, @Anchopr, @CalcAreapr)

--Procedimiento almacenado para actualizar datos
create procedure pr_updateArea
@IDareapr varchar(10),
@nombreAreapr varchar(500),
@TipoAreapr varchar (800),
@Largopr varchar (10),
@Anchopr varchar (10),
@CalcAreapr varchar (10)
as
update Areas
set
ID_area = @IDareapr,
NombreDeArea = @nombreAreapr,
TipoArea = @TipoAreapr,
Largo = @Largopr,
Ancho = @Anchopr,
CalcArea = @CalcAreapr
where ID_area = @IDareapr

--Procedimiento almacenado para eliminar datos
create procedure pr_deleteArea
@IDareaPr varchar(10)
as delete from Areas where ID_area = @IDareaPr

--
create procedure pr_getAreaData
as
select
a.ID_area as 'ID',
a.NombreDeArea as 'Nombre',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea'

--a.ID_edificio as 'IDedificio'
from Areas a
order by a.NombreDeArea asc


--Busqueda
create procedure pr_getAreaDataLIKE
@data varchar (50)
as 
select
a.ID_area as 'ID',
a.NombreDeArea as 'Nombre',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea'
from Areas a
where a.NombreDeArea like '%'+@data+'%'
order by a.NombreDeArea asc



create procedure st_getAreaList
as
select a.ID_area as 'IDarea',
a.NombreDeArea as 'NombreArea',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea'
from Areas a
order by a.NombreDeArea asc