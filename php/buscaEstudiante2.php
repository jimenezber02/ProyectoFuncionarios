<?php
	include("claseEstudiante.php");
	$cf = new claseEstudiante();

	echo(json_encode($cf->getEstudiantesAnio($_GET['anio'])));
?>