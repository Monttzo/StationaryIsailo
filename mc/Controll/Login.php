	<?php	 
		error_reporting(E_ERROR | E_WARNING | E_PARSE); // evita mostrar los errores
		session_start(); // inicia una sesion
		require ("../Modelo/Conexion.php"); //llama al archivo de conexion
		global $enlace;	// invoca una variable global enlace
		$usuario = ($_POST['email']); // declara que la variable usuario es obtenida de un formulario tipo POST
		$password = ($_POST['password']); // declara que la variable usuario es obtenida de un formulario tipo POST
		$_SESSION['usr'] = $usuario; // declara la variable usuario, como una variable se sesion usr
		$_SESSION['pass']= $password; // declara la variable contraseña como una variable de sesion password
		
		$resultado = mysqli_query($enlace, "select * from usuario where nickNameUsuario = '$usuario'"); //declara la variable resultado como un query de mysql en la variable global enlace
		$row = mysqli_fetch_array($resultado); // declara la variable row como la variable resultado convertida en array

		if ($row['nickNameUsuario'] == $usuario AND $row['claveUsuario']==$password AND $row['estadoUsuario']=="Activo") { // comprara por medio de una condicion las variables del arry y las del formulario

				$_SESSION['tipoUsu'] = $row['tipoUsuario'];
				echo "<script>alert('Iniciando Sesión');window.location.href='../../Inicio.php';</script>";
		}
		else {
			echo "<script>alert('El nickname del usuario o la contraseña son incorrectos');window.location.href='../../Index.php';</script>"; // envia una alerta con JAVASCRIPT
		}
	?>