create procedure pr_insertSubsistema
@IDsubsistemaPr varchar(10),
@NombreSubsistemaPr varchar(1000)
as 
insert into Subsistema(ID_subsistema,NombreDeSubsistema) values (@IDsubsistemaPr,@NombreSubsistemaPr)

create procedure pr_updateSubsistema
@IDsubsistemaPr varchar(10),
@NombreSubsistemaPr varchar(1000)
as 
update Subsistema
set 
ID_subsistema = @IDsubsistemaPr,
NombreDeSubsistema = @NombreSubsistemaPr
where ID_subsistema = @IDsubsistemaPr

create procedure pr_deleteSubsistema
@IDsubsistemaPr varchar(10) 
as delete from Subsistema where ID_subsistema = @IDsubsistemaPr

--Obtener Data
create procedure pr_getSubsistemaData
as
select 
s.ID_subsistema as 'ID',
s.NombreDeSubsistema as 'Nombre'
from Subsistema s
order by s.NombreDeSubsistema asc

--Busqueda
create procedure pr_getSubsistemaDataLIKE
@data varchar(50)
as
select 
s.ID_subsistema as 'ID',
s.NombreDeSubsistema as 'Nombre'
from Subsistema s
where
s.NombreDeSubsistema like '%'+@data+'%'
order by s.NombreDeSubsistema asc