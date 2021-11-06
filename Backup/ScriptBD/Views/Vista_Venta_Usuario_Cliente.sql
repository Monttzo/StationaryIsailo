create view Venta_Usuario_Cliente as
select
venta.idVenta as venta,
cliente.nombreCliente as cliente,
usuario.nombreUsuario as usuario 
from venta
inner join cliente on cliente.idCliente = venta.idClienteFK
inner join usuario on usuario.idUsuario = venta.idUsuarioFK
order by venta.idVenta;