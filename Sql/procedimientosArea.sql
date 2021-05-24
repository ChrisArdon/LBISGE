create procedure pr_insertArea
@IDareapr varchar(10),
@nombreAreapr varchar(500)
--@IDedificioPr varchar(10)
as
insert into Areas(ID_area, NombreDeArea) values (@IDareapr, @nombreAreapr)

create procedure pr_updateArea
@IDareapr varchar(10),
@nombreAreapr varchar(500)
--@IDedificioPr varchar(10)
as
update Areas
set
ID_area = @IDareapr,
NombreDeArea = @nombreAreapr
--ID_edificio = @IDedificioPr
where ID_area = @IDareapr

create procedure pr_deleteArea
@IDareaPr varchar(10)
as delete from Areas where ID_area = @IDareaPr

create procedure pr_getAreaData
as
select
a.ID_area as 'ID',
a.NombreDeArea as 'Nombre'
--a.ID_edificio as 'IDedificio'
from Areas a
order by a.NombreDeArea asc
