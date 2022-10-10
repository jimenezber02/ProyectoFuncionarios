<?php
	include("claseEstudiante.php");
	$obj = new claseEstudiante();

	$ced = $_GET['cedula'];

	echo(json_encode($obj->getEstudiante($ced)));

?>