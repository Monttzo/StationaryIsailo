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
			error_reporting(E_ERROR | E_WARNING | E_PARSE); //evita mostrar errores
			require("../../mc/Modelo/Conexion.php");//llama al archivo de conexion
			global $enlace;//invoca la variable global enlace


			$docsu = $_POST['TipoDocUsuario'];//declara la variable docsu como resultado obtenido de un formulario POST
			$resultado = mysqli_query($enlace, "select * from usuario where noDocumentoUsuario = $docsu");//declara la variable resultado como un query de mysql en la variable global enlace
			$filas = mysqli_query($enlace, "select * from usuario");//declara la variable resultado como un query de mysql en la variable global enlace
			$resultadorows = $filas -> num_rows; //declara la variable resultadorows como el numero de filas contenidas en la variable filas
			$IdRows = $resultadorows + 1; //declara la variable idRows como una suma de resultadorows y 1
			if ($resultado -> num_rows == 0) {  //condicion que compara el numero de filas contenidas en la variable resultado con 0



				//inicia un formulario con metodo POST para obtener variables 

				//pasa la variable idRows mediante un input de tipo hidden para registrar automaticamente el id del usuario en orden y sin que el usuario lo modifique
			 
					echo "<form method='POST' enctype='multipart/form-data' action = 'registrar.php'>
					<center><img src='../../estilos/Imagenes/1x/REGE3.png' class='REGE'> </center>
					<br>
					<center><input type = 'hidden' value = '$IdRows' name = 'idUsu'></center>
					<input type='hidden'style:'display:none;'>
					<table>
					<tr>
						<td><center><label for='nombreUsuario'>Nombre  &#128288</center> <center><input type ='text' name = 'nombreUsuario' placeholder='Daniel' autocomplete='off' required></center></td>
						<td><center><label for='apellidoUsuaio'>Apellido &#128288 </center> <center><input type ='text' name = 'apellidoUsuario' placeholder='Monsalve' autocomplete='off' required></center></td> 
					</tr
					<tr>
						<td><center><label for='tipoDocUsuariio'>tipo de documento &#127915</center> <center><input type ='text' name = 'tipoDocUsuariio' placeholder='Cedula' autocomplete='off' required></center></td>
						<td><center><label for ='fechaCreaUsuario'>  fecha de creación  &#128198</center> <center><input type ='date' name = 'fechaCreaUsuario' autocomplete='off' required></center></td>
					</tr>
					<tr>
						<td><center><label for='noDocumentoUsuariio'>Numero de documento &#128290</center> <center><input type='number' name='noDocumentoUsuariio' placeholder='1234567890' autocomplete='off' required></center></td>
						<td><center><label for='direccionUsuario'>Dirección &#128238</center> <center><input type ='text' name = 'direccionUsuario' placeholder='calle 1 sur N 2' autocomplete='off' required></center></td>
					</tr>
					<tr>
						<td><center><label for='telefonoUsuario'>Telefono &#128222</center> <center><input type ='number' name = 'telefonoUsuario' placeholder='1234567' autocomplete='nonas' required></center></td>
						<td><center><label for='generoUsuario'>Genero del usuario</center> <center><input type ='radio' name = 'generoUsuario' value = 'Masculino'> Hombre &#128697
							<input type ='radio' name = 'generoUsuario' value = 'Femenino'> Mujer &#128698 </center></td>
					</tr>
					<tr>
						<td><center><label for='nickNameUsuario'>Nickname &#128278</center> <center><input type ='text' name = 'nickNameUsuario' placeholder='Ejemplo' autocomplete='off' required></center></td>
						<td><center><label for='claveUsuario'>Contraseña &#128273</center> <center><input type ='password' name = 'claveUsuario' placeholder='Clave' autocomplete='off' required></center></td>
					</tr>
					<tr>
						<td><center><label for='emailUsuario'>Email del usuario &#128231</center> <center><input type ='email' name = 'emailUsuario'placeholder='ejemplo@gmail.com' autocomplete='off' required> </center></td>
						<td><center><label for='fotoUsuario'>Foto &#127924</center> <center><input type ='file' name ='fotoUsuario' autocomplete='off' required></center></td>
					</tr>
					<tr>
						<td><center><label for='tipoUsuario'>Tipo de usuario</center> <center><input type ='radio' name = 'tipoUsuario' value = 'Vendedor'> Vendedor &#128178
							<br>
							<input type ='radio' name = 'tipoUsuario' value = 'Administrador'> Administrador &#128295</center></td>
						<td><center><label for='estadoUsuario'>Estado del usuario</center> <center><input type ='radio' name = 'estadoUsuario' value = 'Activo'> Activo &#9989
							<br>
							<input type ='radio' name = 'estadoUsuario' value = 'Inactivo'> Inactivo &#10062 </center></td>
					</tr>
					</table>
					<center><input type='image' src='../../estilos/Imagenes/1x/Registrar.png' onMouseOver=this.src='../../estilos/Imagenes/1x/RegistrarOnClick.png' onMouseOut=this.src='../../estilos/Imagenes/1x/Registrar.png' class='registrar'></center>
					</form>";
				
			}
			else {
				echo "<script>alert('El numero de documento ya existe.');window.location.href='../../Empleados/registrar.php';</script>"; //muestra una alerta de JAVASCRIPT y con el mismo redirecciona a otra pagina
			} 
		?>
	</div>
	<br>
<?php
require_once('../../views/footer.php');	 //llama al footer
?>