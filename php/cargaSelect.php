<?php 
	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
    	header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

	if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
    	header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
		header("Access-Control-Allow-Origin: *");

	include("conexion.php");
	$obj = new conexion();
	$conn = $obj->conectar();

	$campo="";
	$campoD="";
	
	if(isset($_POST['camp']))
	{
		$campo=$_POST['camp'];
		if($campo=="prov")
		{
			$id=$_POST['id'];
			$sentencia1="SELECT * FROM distritos_panama where id_num_prov='$id'";
			$resultado=mysqli_query($conn,$sentencia1);

			$cadena="<option value='0'>-seleciona-</option>";
			
			
			while($i=mysqli_fetch_array($resultado))
			{
				$cadena=$cadena."<option value='".$i['id_num_dist']."'>".$i['nombre_dist']."</option>";
			}
			echo($cadena);
		}

		
	}
	if(isset($_POST['campD']))
	{
		$campoD=$_POST['campD'];
		if($campoD=="dist")
		{
			$idD=$_POST['idD'];
			$sentencia2="SELECT * FROM corregimientos_panama where id_num_dist='$idD'";
			$resultado=mysqli_query($conn,$sentencia2);

			$cadena="<option value='0'>-seleciona-</option>";
			
			while($j=mysqli_fetch_array($resultado))
			{
				$cadena=$cadena."<option value='".$j['id_num_correg']."'>".$j['nombre_correg']."</option>";
			}
			echo($cadena);
		}
	}
	
	if(isset($_POST['campo']))
	{
		$campp=$_POST['campo'];
		if($campp=="fac")
		{
			$id=$_POST['facultad'];
			$sentencia2="SELECT * FROM departamento_u_nacional where relacion='$id'";
			$resultado=mysqli_query($conn,$sentencia2);

			$cadena="<option value='0'>-seleciona-</option>";
			

			while($j=mysqli_fetch_array($resultado))
			{
				$cadena=$cadena."<option value='".$j['id']."'>".$j['opcion']."</option>";
				
			}
			echo($cadena);
			//echo($cadena."</select>");
		}
	}


?>