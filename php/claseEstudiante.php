<?php  
	/**
	 * 
	 */
	include("conexion.php");
	class claseEstudiante
	{
		private $conexion;
		private $conn;
		private $estudiante;
		private $estudiantesAnio;
		
		function __construct()
		{
			# code...
			$this->conexion = new conexion();
			$this->conn = $this->conexion->conectar();

			$this->estudiantesAnio = array();
		}

		//Registra un funcionario
		function registraEstudiante($datos){
			$sentencia="INSERT INTO estudiantes (cedula,nombre,sexo,Provincia,Distrito,corregimiento,facultad,carrera,anio) 
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

		//Retorna un estudiante
		function getEstudiante($cedula){
			$sentencia = "SELECT * FROM estudiantes where(cedula='$cedula')";
			$result = mysqli_query($this->conn,$sentencia);
			$this->estudiante = mysqli_fetch_array($result);

			return $this->estudiante;
		}

		//Retorna todos los estudiantes
		function getEstudiantesAnio($anio){
			$sentencia="SELECT * FROM estudiantes where(anio='$anio')";
			$result=mysqli_query($this->conn,$sentencia);
			while($i = mysqli_fetch_array($result)){
				$this->estudiantesAnio[] = $i;
			}

			return $this->estudiantesAnio;
		}
	}
?>