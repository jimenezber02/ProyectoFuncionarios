window.onload=function()
{
	$("#consulta").click(function()
	{
		an = $("#anio").val();
		consultaDB(an);
	});
}

function consultaDB(dato)
{

	cadena="anio="+dato;
	$.ajax(
	{
		type:"GET",
		url:"../php/buscaFuncionario2.php",
		data: cadena,
		success:function(r)
		{
			console.log(r);
			if(r > 0)
			{
				alert("Si existen datos");
				window.open("../php/PDFanio.php?anio="+dato,"_blank");
				window.location.href="../index.html";
			}
			else
			{
				alert("No existen Datos");
				//buscaPDF(cedula);
			}
		}
	});
}

