create procedure pr_insertInformacionArea
--@ID_informacionAreaPr varchar(10),
@DescripcionPr varchar(1000),
@CantidadPr varchar(10),
@CapacidadPr varchar(15),
@HorasDeUsoPr varchar(5),
@DiasPr varchar(10),
@ConsumoPr varchar(15),
@ID_edificioPr varchar(10),
@ID_areaPr varchar(10),
@ID_subsistemaPr varchar(10)
as
insert into InformacionArea(Descripcion,Cantidad,Capacidad,HorasDeUso,Dias,Consumo,ID_edificio,ID_area,ID_subsistema)
values (@DescripcionPr,@CantidadPr,@CapacidadPr,@HorasDeUsoPr,@DiasPr,@ConsumoPr,@ID_edificioPr,@ID_areaPr,@ID_subsistemaPr)

create procedure pr_updateInformacionArea
@DescripcionPr varchar(1000),
@CantidadPr varchar(10),
@CapacidadPr varchar(15),
@HorasDeUsoPr varchar(5),
@DiasPr varchar(10),
@ConsumoPr varchar(15),
@ID_edificioPr varchar(10),
@ID_areaPr varchar(10),
@ID_subsistemaPr varchar(10)
as
update InformacionArea
set 
Descripcion = @DescripcionPr,
Cantidad = @CantidadPr,
Capacidad = @CapacidadPr,
HorasDeUso = @HorasDeUsoPr,
Dias = @DiasPr,
Consumo = @ConsumoPr,
ID_edificio = @ID_edificioPr,
ID_area = @ID_areaPr,
ID_subsistema = @ID_subsistemaPr
where Descripcion = @DescripcionPr

create procedure pr_deleteInformacionArea
@DescripcionPr varchar(1000)
as
delete from InformacionArea where Descripcion = @DescripcionPr

create procedure pr_getInformacionAreaData
as
select 
i.Descripcion as 'Descripcion',
i.Cantidad as 'Cantidad',
i.Capacidad as 'Capacidad',
i.HorasDeUso as 'HorasDeUso',
i.Dias as 'Dias',
i.Consumo as 'Consumo',
i.ID_edificio as 'IDedificio',
i.ID_area as 'IDarea',
i.ID_subsistema as 'IDsubsistema'
from InformacionArea i