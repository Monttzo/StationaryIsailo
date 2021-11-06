<?php
session_start();
$_SESSION['tipoUsu'];
if ($_SESSION['tipoUsu'] == 'Administrador') {
	require_once('../../views/headermysql.php');
}
else if ($_SESSION['tipoUsu'] == 'Vendedor') {
	require_once('../../views/headermysqlV.php');
}
$usuario=$_SESSION['usr']; //obtiene la variable de sesion usr
	
	if(!isset($usuario)){ //condicional que evalua si la variable usuario no existe para mandar una alerta de JAVASCRIPT y redirigir a la pagina index, si la variable usuario no es false dejara navegar con normalidad
		echo "<script>alert('Debe Iniciar Sesión');window.location.href='../../Index.php';</script>";
	}

?>
	<div class="cuerpo">
		<?php
			require("../../mc/Modelo/Conexion.php"); //llama al archivo de conexion
			global $enlace; //invoca la variable global enlace



			$docsu = $_POST['TipoDocUsuario'];//declara la variable docsu como resultado obtenido de un formulario POST
			$resultado = mysqli_query($enlace, "call selectUsuario ($docsu);");//declara la variable resultado como un query de mysql en la variable global enlace
			if ($resultado -> num_rows > 0) {//condicion que compara el numero de filas contenidas en la variable resultado con 0
			 
					while ($row = $resultado->fetch_assoc()) {// ciclo que extrae los datos de resultado convirtiendolo en un array llamado row

						$idUsuario = $row['idUsuario']; //extrae la variable identificada como idUsuario Usuario del array row, convirtiendolo en una variable
						$noDocumentoUsuario = $row['noDocumentoUsuario'];
						$nombreUsuario = $row['nombreUsuario'];
						$apellidoUsuario = $row['apellidoUsuario'];
						$tipoDocUsuariio = $row['tipoDocUsuario'];
						$direccionUsuario = $row['direccionUsuario'];
						$telefonoUsuario = $row['telefonoUsuario'];
						$generoUsuario = $row['generoUsuario'];
						$nickNameUsuario = $row['nickNameUsuario'];
						$claveUsuario = $row['claveUsuario'];
						$emailUsuario = $row['emailUsuario'];
						$fotoUsuario = base64_encode($row['fotoUsuario']);
						//formulario para modificar algunas variables 
						echo "<form method='POST' action = 'modificar.php' enctype='multipart/form-data' >
							<table>
							<tr>
								<td><center><label for='noDocumentoUsuariio'>Digite el numero de documento &#128290</center> <center><input type='number' name= 'noDocumentoUsuariio' value='$noDocumentoUsuario' autocomplete='off' required></center></td>
								<td><center><label for='tipoDocUsuariio'>Digite el tipo de documento &#127915</center> <center><input type ='text' name = 'tipoDocUsuariio' value='$tipoDocUsuariio' autocomplete='off' required></center></td>
							</tr>
							<tr>
								<td><center><label for='nombreUsuario'>Digite el nombre de usuario &#128288</center> <center><input type ='text' name = 'nombreUsuario' value='$nombreUsuario' autocomplete='off' required></center></td>
								<td><center><label for='apellidoUsuaio'>Digite el apellido del usuario &#128288</center> <center><input type ='text' name = 'apellidoUsuario' value='$apellidoUsuario' autocomplete='off' required></center></td>
							</tr>
							<tr>
								<td><center><label for='direccionUsuario'>Digite la dirección del usuario &#128238</center> <center><input type ='text' name = 'direccionUsuario' value='$direccionUsuario' autocomplete='off' required></center></td>
								<td><center><label for='telefonoUsuario'>Digite el telefono del usuario &#128222</center> <center><input type ='number' name = 'telefonoUsuario' value='$telefonoUsuario' autocomplete='off' required></center></td>
							</tr>
							<tr>
								<td><center><label for='generoUsuario'>seleccione el genero del usuario</center> <center><input type ='radio' name = 'generoUsuario' value = 'Masculino' checked='$generoUsuario' autocomplete='off' required> Hombre &#128697
									<input type ='radio' name = 'generoUsuario' value = 'Femenino'> Mujer &#128698</center></td>
								<td><center><label for='nickNameUsuario'>Digite el Nick del usuario &#128278</center> <center><input type ='text' name = 'nickNameUsuario' value='$nickNameUsuario' autocomplete='off' required></center></td>
							</tr>
							<tr>
								<td><center><label for='claveUsuario'>Digite la contraseña del usuario &#128273</center> <center><input type ='password' name = 'claveUsuario' value='$claveUsuario' autocomplete='off' required></center></td>
								<td><center><label for='emailUsuario'>Digite el email del usuario &#128231</center> <center><input type ='email' name = 'emailUsuario' value='$emailUsuario' autocomplete='off' required></center></td>
							</tr>
							<tr>
								<td><center><label for='fotoUsuario'>Seleccione una foto de usuario &#127924</center> <center> <img width='100' src='data:image/png;base64, $fotoUsuario'></center></td>
								<td><center><input type ='file' name = 'fotoUsuario' value='$fotoUsuario'></center></td>
							</tr>
							<center><input type='hidden' name='idUsu' value='$idUsuario' ></center>
							</table>
							<center><a href='../../Inicio.php'><input type='image' src='../../estilos/Imagenes/1x/Modificar.png' onMouseOver=this.src='../../estilos/Imagenes/1x/ModificarOnClick.png' onMouseOut=this.src='../../estilos/Imagenes/1x/Modificar.png' class='registrar'></a></center>
							</form>";

							}

			}
			else {
				echo "<script>alert('El numero de documento no existe.');;window.location.href='../../Empleados/ModificarE.php';</script>"; //muestra una alerta de JAVASCRIPT

			} 
		?>
	</div>
	<br>
<?php
require_once('../../views/footer.php');	 //llama al footer
?>