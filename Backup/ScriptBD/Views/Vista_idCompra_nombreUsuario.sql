create view idCompra_nombreUsuario as
select 
compra.idCompra as compra,
usuario.nombreUsuario as usuario
from compra
inner join usuario on usuario.idUsuario = compra.idUsuarioFK
order by compra.idCompra;