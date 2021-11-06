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
			require("../../mc/Modelo/Conexion.php");//llama al archivo de conexion
			global $enlace;//invoca la variable global enlace


			$docsu = $_POST['TipoDocUsuario'];//declara la variable docsu como resultado obtenido de un formulario POST
			$resultado = mysqli_query($enlace, "call selectUsuario ($docsu);");//declara la variable resultado como un query de mysql en la variable global enlace
			if ($resultado -> num_rows > 0) {//condicion que compara el numero de filas contenidas en la variable resultado con 0
			 
					while ($row = $resultado->fetch_assoc()) {// ciclo que extrae los datos de resultado convirtiendolo en un array llamado row
						
						$idUsuario = $row['idUsuario']; //extrae la variable identificada como idUsuario del array row, convirtiendolo en una variable
						$noDocumentoUsuario = $row['noDocumentoUsuario'] ;
						$nombreUsuario = $row['nombreUsuario'];
						$apellidoUsuario = $row['apellidoUsuario'];
						$tipoDocUsuariio = $row['tipoDocUsuario'];
						$direccionUsuario = $row['direccionUsuario'];
						$telefonoUsuario = $row['telefonoUsuario'];
						$generoUsuario = $row['generoUsuario'];
						$nickNameUsuario = $row['nickNameUsuario'];
						$claveUsuario = $row['claveUsuario'];
						$emailUsuario = $row['emailUsuario'];
						$fechaCreaUsuario = $row['fechaCreaUsuario'];
						$fotoUsuario = base64_encode($row['fotoUsuario']);
						$tipoUsuario = $row['tipoUsuario'];
						$estadoUsuario = $row['estadoUsuario'];
						//inicia tabla que presenta las variables obtenidas en una tabla y un formulario para enviar informacion de tipo POST
						echo "<form method='POST' action='InactivarE.php'><table>
								<tr>
									<td><center>&#128290 Numero de documento del usuario:</center>	<center>$noDocumentoUsuario</center></td>
									<td><center>&#128288 Nombre del usuario:</center> 				<center>$nombreUsuario</center></td>
								</tr>
								<tr>
									<td><center>&#128288 Apellido del usuario:</center>					<center>$apellidoUsuario</center></td>
									<td><center>&#128238 Dirección del usuario:</center>				<center>$direccionUsuario</center></td>
								</tr>
								<tr>
									<td><center>&#128222 telefono del usuario:</center>				<center>$telefonoUsuario</center></td>
									<td><center>&#128699 Genero del usuario:	</center>				<center>$generoUsuario</center></td><br>
								</tr>
								<tr>
									<td><center>&#128278 Nick Name del usuario:</center>				<center>$nickNameUsuario</center></td>
									<td><center>&#128273 Clave del usuario:</center>					<center>$claveUsuario</center></td>
								</tr>
								<tr>
									<td><center>&#128231 Email del usuario:</center>					<center>$emailUsuario</center></td>
									<td><center>&#128198 Fecha de creacion del usuario:</center>		<center>$fechaCreaUsuario</center></td>
								</tr>
								<tr>
									<td><center>&#127924 Foto del usuario:</center>					<center> <img width='100' src='data:image/png;base64, $fotoUsuario'></center>
									<td><center>&#128296 Tipo de usuario:</center>					<center>$tipoUsuario</center></td>
								</tr>
								<tr>
									<td><center>&#10071 estado del usuario:</center>					<center>$estadoUsuario</center></td>
									<td><center>&#127915 Tipo documento usuario:</center>				<center>$tipoDocUsuariio</center></td>
								</tr>
								<tr>
									<td><input type='hidden' name='idUsu' value='$idUsuario'></td>
								</tr>
							</table>
							<center><input type='image' src='../../estilos/Imagenes/1x/Inactivar.png' onMouseOver=this.src='../../estilos/Imagenes/1x/InactivarOnClick.png' onMouseOut=this.src='../../estilos/Imagenes/1x/Inactivar.png' class='registrar'></center>
							</form>";

					}

				}
				else {
				echo "<script>alert('El numero de documento no existe.');</script>"; //muestra una alerta de JAVASCRIPT

				} 
		?>
		</div>
	<br>
<?php
require_once('../../views/footer.php');	//llama al footer
?>		