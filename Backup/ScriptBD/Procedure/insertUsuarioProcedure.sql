delimiter $$
create procedure inserUsuario (
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
in _emailUsuario varchar(50),
in _fechaCreaUsuario date,
in _fotoUsuario mediumblob,
in _tipoUsuario varchar(15),
in _estadoUsuario varchar(10)
)
begin
 insert into sena.usuario (idUsuario, noDocumentoUsuario, tipoDocUsuario, nombreUsuario, apellidoUsuario, direccionUsuario, telefonoUsuario, generoUsuario,
 nickNameUsuario, claveUsuario, emailUsuario, fechaCreaUsuario, tipoUsuario, estadoUsuario) values (_idUsuario, _noDocumentoUsuario, _tipoDocUsuario,
 _nombreUsuario, _apellidoUsuario, _direccionUsuario, _telefonoUsuario, _generoUsuario, _nickNameUsuario, _claveUsuario, _emailUsuario, 
 _fechaCreaUsuario, _tipoUsuario, _estadoUsuario);
end;


call inserUsuario ( 27, 1000215349, 'Cedula','Daniel','Monsalve', 'calle 31 sur N23-82', 3014899831,'Masculino', 'Monzis', 1000215349, 'dpulido59@gmail.com',
  '2020-08-21', 'Administrador', 'Activo');