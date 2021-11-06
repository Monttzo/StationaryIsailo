<?php
			error_reporting(E_ERROR | E_WARNING | E_PARSE); //evita mostrar errores

			require("../../mc/Modelo/Conexion.php"); //llama al archivo de conexion
			global $enlace; //invoca la variable global enlace


					$idUsuario = $_POST['idUsu'];	//declara la variable idUsuario como obtenida de un formulario POST			

					$sql = "call inacUsuario ($idUsuario);"; //declara la variable sql como un texto que representa un query de mysql

						if (mysqli_query($enlace, $sql )) { // condicion que verifica si se realiza con exito el query de la variable sql en la conexion de la variable enlace 

							echo "<script>alert('Usuario inactivado correctamente');window.location.href='../../views/Empleados/InactivarEFor.php';</script>";//muestra una alerta de JAVASCRIPT y con el mismo redirecciona a otra pagina						
						}else {
							echo "<script>alert('Error al inactivar usuario');window.location.href='../../views/Empleados/InactivarEFor.php';</script>";
							//muestra una alerta de JAVASCRIPT y con el mismo redirecciona a otra pagina
						}
?>