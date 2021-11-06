<!-- Documento usado como header en la mayoria de las paginas-->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Registrar Empleado</title>
	<link rel="icon" type="image/png" href="../estilos/imagenes/4x/Logo.png?v=<?php echo(rand()); ?>" />
	<link rel="stylesheet" type="text/css" href="../estilos/cuerpoypie.css?v=<?php echo(rand()); ?>"><!-- echo(rand) asigna un nombre distinto con cada apertura del archivo para poder cargar los cambios realizados en css y no guardar en el cache -->
	<link rel="stylesheet" type="text/css" href="../estilos/menu_nav.css?v=<?php echo(rand()); ?>">
	<link rel="stylesheet" type="text/css" href="../estilos/InicioVarios.css?v=<?php echo(rand()); ?>">
	<link rel="stylesheet" type="text/css" href="../estilos/registrar_usuarios.css?v=<?php echo(rand()); ?>">
</head>
<body>
	<header style="position: relative; z-index: 999;">
		<div class="encabezado">
		<a href="../Inicio.php"><img src="../estilos/imagenes/1x/Encabezado2.png?v=<?php echo(rand()); ?>" class="encabeza"></a>
		</div>
		<div>
			<nav class="nave">
				<ul class="menu">
					<li><a href="#">Empleado</a>
						<ul class="submenu1">
							<li><a href="Empleados/ConsultarEFor.php">Consultar Empleado</a></li>
							<li><a href="Empleados/ModificarE.php">Modificar Empleado</a></li>
						</ul>
					</li>
					<li><a href="#">Compra</a>
						<ul class="submenu1">
							<li><a href="../Compra/RegistrarC.html">Registrar Compra</a></li>
							<li><a href="../Compra/ConsultarC.html">Consultar Compra</a></li>
						</ul>
					</li>
					<li><a href="#">Producto</a>
						<ul class="submenu1">
							<li><a href="../producto/ConsultarP.html">Consultar Producto</a></li>
						</ul>
					</li>
					<li><a href="#">Venta</a>
						<ul class="submenu1">
							<li><a href="../venta/ConsultarV.html">Consultar Ventas</a></li>
							<li><a href="../venta/AnularFV.html">Anular Factura Venta</a></li>
							<li><a href="#">Generar Factura</a></li>
						</ul>
					</li>
					<li><a href="#">Cliente</a>
						<ul class="submenu1">
							<li><a href="../Clientes/RegistrarC.html">Registrar Cliente</a></li>
							<li><a href="../Clientes/ConsultarC.html">Consultar Cliente</a></li>
							<li><a href="../Clientes/ModificarC.html">Modificar Cliente</a></li>
						</ul>
					</li>
					<li><a href="../mc/Modelo/Desconexion.php">Cerrar Sesión</a></li>
				</ul>
			</nav>
		</div>
	</header>