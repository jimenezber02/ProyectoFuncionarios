<?php
	include("conexion.php");
	$obj = new conexion();

	$ced = $_GET['cedula'];
	$sentencia = "SELECT * FROM funcionarios where(cedula='$ced')";

	$result = mysqli_query($obj->conectar(),$sentencia);

	echo($resultado = mysqli_num_rows($result));

?>