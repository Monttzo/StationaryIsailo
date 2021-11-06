<?php
			error_reporting(E_ERROR | E_WARNING | E_PARSE);//evita mostrar errores
			require("../../mc/Modelo/Conexion.php"); //llama al archivo de conexion
			global $enlace;//invoca la variable global enlace



					$idUsuario = $_POST['idUsu'];//declara las variables  como obtenidas de un formulario POST
					$noDocUsuario = $_POST['noDocumentoUsuariio'];
					$tipoDocUsuari = $_POST['tipoDocUsuariio'];
					$nomUsuario = $_POST['nombreUsuario'];
					$apellidoUsuaio = $_POST['apellidoUsuario'];
					$direcUsuario = $_POST['direccionUsuario'];
					$teleUsuario = $_POST['telefonoUsuario'];
					$geneUsuario = $_POST['generoUsuario'];
					$nickNameUsu = $_POST['nickNameUsuario'];
					$claveUsu = $_POST['claveUsuario'];
					$emailUsu = $_POST['emailUsuario'] ;
					$fechaCreaUsu = $_POST['fechaCreaUsuario'];

					$tipoArchivo = $_FILES['fotoUsuario']['type'];
					$tamanofoto = $_FILES['fotoUsuario']['size'];
					$nombreArchivo = $_FILES['fotoUsuario']['name'];
					$fotoUsu = fopen($_FILES['fotoUsuario']['tmp_name'],'r');
					$binariosImagen = fread($fotoUsu,$tamanofoto);
					$binariosImagen = mysqli_escape_string($enlace,$binariosImagen);

					$tipoUsu = $_POST['tipoUsuario'];
					$estadoUsu = $_POST['estadoUsuario'];

					if(($noDocUsuario<0)||(is_numeric($tipoDocUsuari))||(is_numeric($nomUsuario))|| (is_numeric($apellidoUsuaio)) || ($telUsuario < 0)){
						echo "<script>alert('Datos no validos'); window.location.href='../../views/Empleados/registrar.php';</script>";
					}else {				

						$sql = "call inserUsuario ($idUsuario, $noDocUsuario, '$tipoDocUsuari', '$nomUsuario', '$apellidoUsuaio', '$direcUsuario', $teleUsuario, '$geneUsuario', '$nickNameUsu', '$claveUsu', '$emailUsu','$fechaCreaUsu', '$binariosImagen', '$tipoUsu', '$estadoUsu');";//declara la variable sql como un texto que representa un query de mysql

						if (mysqli_query($enlace, $sql )) {// condicion que verifica si se realiza con exito el query de la variable sql en la conexion de la variable enlace 
								echo "<script>alert('Usuario Registrado correctamente');window.location.href='../../views/Empleados/registrar.php';</script>";//muestra una alerta de JAVASCRIPT y con el mismo redirecciona a otra pagina
						}else {
							echo "<script>alert('Error al registrar usuario');window.location.href='../../views/Empleados/registrar.php';</script>";//muestra una alerta de JAVASCRIPT y con el mismo redirecciona a otra pagina
						}
					}
?>