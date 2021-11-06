<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilos/cuerpoypie.css?v=<?php echo(rand()); ?>">
	<link rel="stylesheet" type="text/css" href="estilos/loginvarios.css?v=<?php echo(rand()); ?>">
	<title>Login.</title>
</head>
<body>
	<?php
	echo '<script>
	alert ("modulo con MVO: empleados");
	</script>';?>
	<header>
	</header>           
	<div class="cuerpo">
		<div>
			<table width="100%">
				<tr>
					<td class="logo"><img src="estilos/Imagenes/escudo.png?v=<?php echo(rand());?>" class="escudo"></td>
					<td class="titulo"><H4>SISTEMA DE INFORMACIÓN PAPELERÍA.</H4><H4>INSTITUTO SAN IGNACIO DE LOYOLA</H4></td>
				</tr>   
			</table>
		</div>
		<div>
			<form method="POST" action="mc/Controll/Login.php">
				<H4><center> Ingrese Correo y Contraseña: &#128272 </center></H4>
				<center><input type="text" name="email" placeholder="Correo." autocomplete="off" required></center>
				<br>
				<center><input type="password" name="password" placeholder="Contraseña." autocomplete="off" required></center>
				<br>
				<center><a href="Home.php"><input type="image" src="estilos/Imagenes/1x/Ingresar.png" onMouseOver="this.src='estilos/Imagenes/1x/IngresarOnClick.png'" onMouseOut="this.src='estilos/Imagenes/1x/Ingresar.png'" style="width:20%;"></a></center>
			</form>
			<br>
			<!--<center><a href="Home.php"><center><input type="image" src="estilos/Imagenes/1x/Volver.png" onMouseOver="this.src='estilos/Imagenes/1x/VolverOnClick.png'" onMouseOut="this.src='estilos/Imagenes/1x/Volver.png'" style="width:20%;"></center></a></center></div>-->
		</div>
	</div>
	<br>
<footer>
	<div class="pie">
		<p>Diseñado por: <a href="mailto:dpulido59@gmail.com"> Daniel Esteban Monsalve Pulido</a> y <a href="mailto:camiloacasallas@gmail.com">Camilo Andres Casallas Gomez.</a></p>
		<p><a href="http://www.freepik.com">Fondo Diseñado por Freepik</a><p>
	</div>
</footer>
</body>
</html>