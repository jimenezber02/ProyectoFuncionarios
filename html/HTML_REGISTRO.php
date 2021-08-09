<?php
	include("../php/conexion.php");
	$obj = new conexion();
	$conn = $obj->conectar();
?>

<!DOCTYPE html>

<html>
<head>
    <title>Prueba</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/inicio.css" >
    <link rel="stylesheet" href="../css/cssIndex.css">

    <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="../js/registro.js"></script>
 </head>

<body>
	<header id="header">
		<div class="encabezado">
		<h1 class="titulo_del_sitio"><span class="SubTitulo_del_sitio">Registro</span><br /> Nuevo</h1>
		<h1 class="titulo_del_sitioV2">Título de Funcionarios</h1>
		</div>
	</header> <!-- fin del header  -->

    <div id="conpagina" > 
    	<div class="seccion" >
            <div class="sub_seccion" >	
         
       	<form>

			<label>Cedula:</label>
				<input type="text" name="cedula" id="cedula" value="" /> &nbsp;&nbsp;&nbsp;&nbsp;
			<label>Nombre:</label>
				<input type="text" name="nombre" id="nombre" value="" /> &nbsp;&nbsp;&nbsp;&nbsp;
			<br/><br/>
			<label>Sexo: </label>
				<input type="radio" value="M" name="sex" id="sex" />  Masculino 
				<input type="radio" value="F" name="sex" id="sex" /> Femenino <br/>

			<br/>
			<label>Provincia</label>
				<select name="Prov" id="Prov">
					<option value="0">-seleciona-</option>

					<?php
						$sentencia="SELECT * FROM provincias_panama";

						$result = mysqli_query($conn,$sentencia);
						while($i = mysqli_fetch_array($result))
						{
							echo("<option value='".$i['id_num_prov']."'>".$i['nombre']."</option>");
						}
					?>
					
				</select>

			<label>Distrito</label>
				<select id="distrito" name="Dis">
					<option value="0">-seleciona-</option>
				</select>
			<label>Corregimiento</label>
				<select id="corregimiento" name="corr">
				
				</select>
			<br/> <br/>		
			<label>Facultad</label>

				<select id="fac" name="fac">
					<option value="0">-seleciona-</option>
					<?php 
						$sentencia = "SELECT * FROM facultades_u_nacional";
						$resultado = mysqli_query($conn,$sentencia);

						while($i=mysqli_fetch_array($resultado))
						{
							echo("<option value='".$i['id']."'>".$i['opcion']."</option>");
						}
					?>
				</select>

			<label id="carrera">Carrera</label>
				<select id="Carrera" name="car">
					<option value="0">-seleciona-</option>
				</select>
			<br/> <br/>
			<label>Año de obtención del título:</label>
				<input type="text" id="anio" name="anio" value="" /> &nbsp;&nbsp;&nbsp;&nbsp;
				<br/><br/><br/>
				<input class="envio" type="button" id="envio" name="enviar" value="Registrar" ></input>
		</form>
             </div><!--cierre sub_seccion-->
         </div><!-- cierre seccion-->
     </div><!-- cierre principal conpagina-->
        
     <div class="bg1">
			<div class="seccion">
				
<!-- footer -->
				<footer>
					<hr/>
					<div class="col_1">
						<!--id="footer_logo"--> <h1 class="titulo_del_sitioV3">SISTEMA MiPrototipo </h1> 
					</div>
				</footer>
<!-- / footer-->
			</div>
	</div>
</body>
</html>