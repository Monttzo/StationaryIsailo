<?php
	session_start(); // Inicia una sesion 
	
	session_destroy(); //destruye la sesion, acabando con las variables de sesion contenidas en la misma
	 
	header("location: ../../Index.php"); // redirecciona al index
	exit(); 


?>