window.onload=function()
{
	cargaDistrito()
	$('#Prov').change(function()
	{
		cargaDistrito();
		verificaCorreg();  
	});

	cargaCorregimiento();
	$('#distrito').change(function(){
		cargaCorregimiento();
	});

	cargaCarreras();
	$('#fac').change(function()
	{
		cargaCarreras();
	});

	$("#envio").click(function()
	{
		validaDatos();
	});
}

function cargaDistrito()
{

	var prov = "prov";
	provId = $('#Prov').val();
	cad = "id="+provId+"&camp="+prov;
	$.ajax({
		type:"POST",
		url:"../php/cargaSelect.php",
		data:cad,
		success:function(r)
		{
			console.log(r);
			$('#distrito').html(r);
		}
	});
}

function cargaCorregimiento()
{
	distID = $('#distrito').val();
	
	//alert(distID);
	var dist = "dist";
	cad = "idD="+distID+"&campD="+dist;
	$.ajax({
		type:"POST",
		url:"../php/cargaSelect.php",
		data:cad,
		success:function(r)
		{
			console.log(r)
			$('#corregimiento').html(r);
		}
	});
}

function verificaCorreg()
{
	fa = $("#Prov").val();
	option = "<option value='0'>-Seleccione-</option>"
	if(fa == 0)
	{
		$("#corregimiento").html(option);
	}
}

function cargaCarreras()
{
	facultad=$('#fac').val();
	
	//alert(distID);
	var facu = "fac";
	cad="facultad="+facultad+"&campo="+facu;
	$.ajax({
		type:"POST",
		url:"../php/cargaSelect.php",
		data:cad,
		success:function(r)
		{
			console.log(r)
			$('#Carrera').html(r);
		}
	});
}

function validaDatos()
{
	sex = document.getElementsByName("sex");
	
	var bandSex=0;
	var sexVal = "";
	for(var i = 0;i < sex.length;i++){
		if(sex[i].checked==true){
			bandSex = 1;
			sexVal = $(sex[i]).val();;
		}
	}
	var objeto = {
		ced: $("#cedula").val(),
		nom: $("#nombre").val(),
		sex: sexVal,
		prov: $("#Prov option:selected").html(),
		dist: $("#distrito option:selected").html(),
		corr: $("#corregimiento option:selected").html(),
		facu: $("#fac option:selected").html(),
		carr: $("#Carrera option:selected").html(),
		anio: $("#anio").val()
	}

	if(objeto.ced!=""){
		if(objeto.nom){
			if(bandSex==1){
				if(objeto.prov!="-seleciona-"){
					if(objeto.dist!="-seleciona-"){
						if(objeto.corr!="-seleciona-"){
							if(objeto.facu!="-seleciona-"){
								if(objeto.carr!="-seleciona-"){
									if(objeto.anio!=""){
										enviaDatos(objeto);
									}else{
										alert("Ingrese anio de de obtencion de titulo");
										return false;
									}
								}else{alert("Seleccione Carrera");return false;}
							}else{alert("Seleccione facultad");return false;}
						}else{alert("Seleccione corregimiento");return false;}
					}else{alert("Seleccione distrito");return false;}
				}else{alert("Seleccione provincia");return false;}
			}else{alert("Seleccione sexo");return false;}
		}else{alert("Ingrese Nombre");return false;}
	}else{alert("Escriba cedula");return false;}
}

function enviaDatos(datos)
{
	$.ajax(
	{
		type:"POST",
		url:"../php/registraEst.php",
		data:datos,
		success:function(r)
		{
			if(r > 0)
			{
				alert("Datos Enviados con exito");
				window.location.href="../index.html";
			}
			else
			{
				alert("Ha ocurrido un error");
			}
		}
	});
}

