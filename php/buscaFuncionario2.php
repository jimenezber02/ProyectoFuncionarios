<?php
	include("claseFuncionario.php");
	$cf = new claseFuncionario();

	echo(json_encode($cf->getFuncionariosAnio($_GET['anio'])));
?>