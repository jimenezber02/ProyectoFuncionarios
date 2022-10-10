<?php
	/**
	 * 
	 */
	class conexion
	{
		private $servidor = "localhost";
		private $usuario = "root";
		private $contraseña = "";

		private $nombre_base = "estudiantes";

		function conectar(){
			return mysqli_connect($this->servidor, $this->usuario, $this->contraseña,$this->nombre_base);
		}
	}
	$obj = new conexion();
	if(!($obj->conectar()))
	{
		echo("\n Conexion InCorrecta\n");
	}
?>
