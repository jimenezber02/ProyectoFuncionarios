<?php
	include("claseFuncionario.php");

	$data = array(
		'ced' 		=> $_POST['ced'],
		'nombre' 	=>  $_POST['nom'],
		'sexo' 		=> $_POST['sex'],
		'prov' 		=> $_POST['prov'],
		'dis'	 	=> $_POST['dist'],
		'correg' 	=> $_POST['corr'],
		'facu' 		=> $_POST['facu'],
		'carrera' 	=> $_POST['carr'],
		'anio_t' 	=> $_POST['anio']
	);

	$obj = new claseFuncionario();
	
	echo($obj->registraFuncionario($data));

?>