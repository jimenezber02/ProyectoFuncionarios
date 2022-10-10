<?php
	include("claseFuncionario.php");
	$obj = new claseFuncionario();

	$ced = $_GET['cedula'];

	echo(json_encode($obj->getFuncionario($ced)));

?>