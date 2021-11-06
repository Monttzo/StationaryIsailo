delimiter $$
create procedure selectUsuario (
in _noDocumentoUsuario varchar(15)
)
begin 
				select * from usuario where noDocumentoUsuario = _noDocumentoUsuario;
end;

call selectUsuario (27);