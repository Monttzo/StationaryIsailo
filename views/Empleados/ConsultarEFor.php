<?php
session_start();
$_SESSION['tipoUsu'];
if ($_SESSION['tipoUsu'] == 'Administrador') {
	require_once('../headeretc.php');
}
else if ($_SESSION['tipoUsu'] == 'Vendedor') {
	require_once('../headeretcV.php');
}
$usuario=$_SESSION['usr']; //obtiene la variable de sesion usr
	
	if(!isset($usuario)){ //condicional que evalua si la variable usuario no existe para mandar una alerta de JAVASCRIPT y redirigir a la pagina index, si la variable usuario no es false dejara navegar con normalidad
		echo "<script>alert('Debe Iniciar Sesión');window.location.href='../Index.php';</script>";
	}

?>
	<div class="cuerpo">
		<form method="POST" action="../../mc/Controll/ConsultaFormUsuario.php">
		<center><label for="busqueda_usuario">Digite el numero de documento: </label> 
			<input type="number" name="TipoDocUsuario"></center>
		</form>
	</div>
	<br>
<?php
require_once('../footer.php'); //Llama al footer 
?>