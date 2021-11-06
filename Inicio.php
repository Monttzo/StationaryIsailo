<?php
session_start();
$_SESSION['tipoUsu'];
if ($_SESSION['tipoUsu'] == 'Administrador') {
	require_once('views/header.php');
}
else if ($_SESSION['tipoUsu'] == 'Vendedor') {
	require_once('views/headerV.php');
}
$usuario=$_SESSION['usr']; //obtiene la variable de sesion usr
	
	if(!isset($usuario)){ //condicional que evalua si la variable usuario no existe para mandar una alerta de JAVASCRIPT y redirigir a la pagina index, si la variable usuario no es false dejara navegar con normalidad
		echo "<script>alert('Debe Iniciar Sesión');window.location.href='Index.php';</script>";
	}

?>
	<div class="cuerpo">
		<?php
			require("mc/Modelo/Conexion.php"); //llama al archivo de conexion
			global $enlace; //invoca la variable global enlace


			$docsu = $_SESSION['usr']; //declara la variable docsu como resultado obtenido de un formulario POST
			$resultado = mysqli_query($enlace, "select * from usuario where nickNameUsuario = '$docsu'"); //declara la variable resultado como un query de mysql en la variable global enlace

					while ($row = $resultado->fetch_assoc()) { // ciclo que extrae los datos de resultado convirtiendolo en un array llamado row
				
						$noDocumentoUsuario = $row['noDocumentoUsuario'] ; //extrae la variable identificada como noDocumento Usuario del array row, convirtiendolo en una variable
						$nombreUsuario = $row['nombreUsuario'];
						$apellidoUsuario = $row['apellidoUsuario'];
						$fotoUsuario = base64_encode($row['fotoUsuario']);


						
						echo "<center style='font-size:30px;'><img width='100' src='data:image/png;base64, $fotoUsuario' style='border-radius: 8px;'> <div style='align=justify;'> &nbsp;&nbsp;&nbsp;&nbsp;Bienvenido $nombreUsuario $apellidoUsuario</div></center>";
					}
					
		?>
		<div class="nada">
			<img src="estilos/imagenes/1x/logo.png?v=<?php echo(rand()); ?>">		
		</div>
	</div>
	<br>
<?php
require_once('views/footer.php');	
?>