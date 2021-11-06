delimiter $$
create procedure inacUsuario (
in _idUsuario int(11)
)
begin 
				update sena.usuario set 
                estadoUsuario = 'Inactivo'
                where idUsuario = _idUsuario;
end;

call inacUsuario (1);