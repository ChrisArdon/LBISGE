create procedure pr_insertEdificio
@ID_EdificioPr varchar(10),
@nombre_edificioPr varchar(30)
as
insert into Edificios(ID_edificio, NombreDeEdificio) values (@ID_EdificioPr, @nombre_edificioPr)

create procedure pr_updateEdificio
@ID_EdificioPr varchar(10),
@nombre_edificioPr varchar(30)
as
update Edificios
set
ID_edificio = @ID_EdificioPr,
NombreDeEdificio = @nombre_edificioPr
where ID_edificio = @ID_EdificioPr


create procedure pr_deleteEdificio
@ID_edificioPr varchar(10)
as
delete from Edificios where ID_edificio = @ID_edificioPr

create procedure pr_getEdificioData
as
select
e.ID_edificio as 'ID',
e.NombreDeEdificio as 'Nombre'
from Edificios e
order by e.NombreDeEdificio asc

--Busqueda
create procedure pr_getEdificioDataLIKE
@data varchar(50)
as
select
e.ID_edificio as 'ID',
e.NombreDeEdificio as 'Nombre'
from Edificios e
where
e.NombreDeEdificio like '%'+@data+'%'
order by e.NombreDeEdificio asc

--Para llenar cualquier combobox
create procedure st_getEdificioList
as
select e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'NombreEdificio'
from Edificios e
order by e.NombreDeEdificio asc

--Para llenar cualquier combobox
create procedure st_getEdificioList
as
select e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'NombreEdificio'
from Edificios e
order by e.NombreDeEdificio asc