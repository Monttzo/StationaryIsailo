
<!-- Documento usado como header en la mayoria de las paginas-->

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Inicio</title>
	<link rel="icon" type="image/png" href="estilos/imagenes/4x/Logo.png?v=<?php echo(rand()); ?>" />
	<link rel="stylesheet" href="estilos/cuerpoypie.css?v=<?php echo(rand()); ?>" /> <!-- echo(rand) asigna un nombre distinto con cada apertura del archivo para poder cargar los cambios realizados en css y no guardar en el cache -->
	<link rel="stylesheet" type="text/css" href="estilos/menu_nav.css?v=<?php echo(rand()); ?>" />
	<link rel="stylesheet" type="text/css" href="estilos/InicioVarios.css?v=<?php echo(rand()); ?>" /> 
</head>
<body>
	<header style="position: relative; z-index: 999;">
		<div class="encabezado">
		<a href="Inicio.php"><img src="estilos/imagenes/1x/Encabezado2.png?v=<?php echo(rand()); ?>" class="encabeza"></a>
		</div>
		<div>
			<nav class="nave">
				<ul class="menu">
					<li class="empleado"><a href="#">Empleado</a>
						<ul class="submenu1">
							<li><a href="views/Empleados/registrar.php">Registrar Empleado</a></li>
							<li><a href="views/Empleados/ConsultarEFor.php">Consultar Empleado</a></li>
							<li><a href="views/Empleados/ModificarE.php">Modificar Empleado</a></li>
							<li><a href="views/Empleados/InactivarEFor.php">Inactivar Empleado</a></li>
						</ul>
					</li>
					<li class="compra"><a href="#">Compra</a>
						<ul class="submenu1">
							<li><a href="views/Compra/RegistrarC.html">Registrar Compra</a></li>
							<li><a href="views/Compra/ConsultarC.html">Consultar Compra</a></li>
						</ul>
					</li>
					<li class="producto"><a href="#">Producto</a>
						<ul class="submenu1">
							<li><a href="views/producto/RegistrarP.html">Registrar Producto</a></li>
							<li><a href="views/producto/ConsultarP.html">Consultar Producto</a></li>
							<li><a href="views/producto/ModificarP.html">Modificar Producto</a></li>
							<li><a href="views/producto/InactivarP.html">Inactivar Producto</a></li>
							<li><a href="views/producto/ReporteEP.html">Reporte Existencia Producto</a></li>
						</ul>
					</li>
					<li class="venta"><a href="#">Venta</a>
						<ul class="submenu1">
							<li><a href="views/venta/RegistrarV.html">Registrar Venta</a></li>
							<li><a href="views/venta/ConsultarV.html">Consultar Ventas</a></li>
							<li><a href="views/venta/AnularFV.html">Anular Factura Venta</a></li>
							<li><a href="views/venta/ReporteV.html">Reporte Ventas</a></li>
							<li><a href="#">Generar Factura</a></li>
						</ul>
					</li>
					<li class="cliente"><a href="#">Cliente</a>
						<ul class="submenu1">
							<li><a href="views/Clientes/RegistrarC.html">Registrar Cliente</a></li>
							<li><a href="views/Clientes/ConsultarC.html">Consultar Cliente</a></li>
							<li><a href="views/Clientes/ModificarC.html">Modificar Cliente</a></li>
							<li><a href="views/Clientes/InactivarC.html">Inactivar Cliente</a></li>
						</ul>
					</li>
					<li><a href="mc/Modelo/Desconexion.php">Cerrar Sesión</a></li>
				</ul>
			</nav>
		</div>
	</header>