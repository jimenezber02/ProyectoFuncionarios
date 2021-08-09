<?php
	include("conexion.php");
	$obj = new conexion();

	$an = $_GET['anio'];
	$sentencia = "SELECT * FROM funcionarios where(anio='$an') LIMIT 1";

	$result=mysqli_query($obj->conectar(),$sentencia);

	echo($resultado=mysqli_num_rows($result));
?>