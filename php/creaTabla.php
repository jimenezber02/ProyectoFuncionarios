<?php 
	include("conexion.php");

	$nom=$_POST['tabla'];

	
	$sentencia="CREATE TABLE IF NOT EXISTS $nom(
		codigo varchar(22) not null,
		cantidad int(22),
		precio float(155,2),

		PRIMARY KEY(codigo))";
	$result=mysqli_query($enlace,$sentencia);
	echo($result);
?>