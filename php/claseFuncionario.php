<?php  
	/**
	 * 
	 */
	include("conexion.php");
	class claseFuncionario
	{
		private $conexion;
		private $conn;
		private $funcionario;
		private $funcionariosAnio;
		function __construct()
		{
			# code...
			$this->conexion = new conexion();
			$this->conn = $this->conexion->conectar();

			$this->funcionariosAnio = array();
		}

		//Registra un funcionario
		function registraFuncionario($datos){
			$sentencia="INSERT INTO funcionarios (cedula,nombre,sexo,Provincia,Distrito,corregimiento,facultad,carrera,anio) 
				values(
				'$datos[ced]',
				'$datos[nombre]',
				'$datos[sexo]',
				'$datos[prov]',
				'$datos[dis]',
				'$datos[correg]',
				'$datos[facu]',
				'$datos[carrera]',
				'$datos[anio_t]'
			)";

			return mysqli_query($this->conn,$sentencia);
		}

		//Retorna un funcionario
		function getFuncionario($cedula){
			$sentencia = "SELECT * FROM funcionarios where(cedula='$cedula')";
			$result = mysqli_query($this->conn,$sentencia);
			$this->funcionario = mysqli_fetch_array($result);

			return $this->funcionario;
		}

		//Retorna todos los funcionarios
		function getFuncionariosAnio($anio){
			$sentencia="SELECT * FROM funcionarios where(anio='$anio')";
			$result=mysqli_query($this->conn,$sentencia);
			while($i = mysqli_fetch_array($result)){
				$this->funcionariosAnio[] = $i;
			}

			return $this->funcionariosAnio;
		}
	}
?>