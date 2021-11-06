delimiter $$
create procedure updaUsuario (
in _idUsuario int(11), 
in _noDocumentoUsuario varchar(15) , 
in _tipoDocUsuario varchar(20), 
in _nombreUsuario varchar(40), 
in _apellidoUsuario varchar(40),
in _direccionUsuario varchar (40),
in _telefonoUsuario varchar(12),
in _generoUsuario varchar(10),
in _nickNameUsuario varchar(15),
in _claveUsuario varchar(20),
in _emailUsuario varchar(50)
)
begin 
				update sena.usuario set 
                noDocumentoUsuario=_noDocumentoUsuario,
                tipoDocUsuario=_tipoDocUsuario,
                nombreUsuario=_nombreUsuario,
                apellidoUsuario=_apellidoUsuario,
                direccionUsuario=_direccionUsuario,
                telefonoUsuario=_telefonoUsuario,
                generoUsuario=_generoUsuario,
				nickNameUsuario=_nickNameUsuario,
                claveUsuario=_claveUsuario,
                emailUsuario=_emailUsuario
                where idUsuario = _idUsuario;
end;

call updaUsuario ( 27, 1000215349, 'Cedula','Esteban','Pulido', 'calle 31 sur N23-82', 3014899831,'Masculino', 'Monzis', 1000215349, 'dpulido59@gmail.com',
  '2020-08-21', 'Administrador', 'Activo');