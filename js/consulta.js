window.onload=function()
{
	$("#consulta").click(function()
	{
		ced = $("#cedula").val();
		consultaDB(ced);
	});
}

function consultaDB(cedula)
{
	cadena = "cedula=" + cedula;
	$.ajax(
	{
		type:"GET",
		url:"../php/buscaFuncionario.php",
		data: cadena,
		success:function(r)
		{
			console.log(r);
			if(r > 0)
			{
				
				alert("Si existe esa cedula");
				window.open("../php/PDFcedula.php?ced="+cedula,"_blank");
				window.location.href="../index.html";
			}
			else
			{
				alert("No existe tal persona");
				
				//buscaPDF(cedula);
			}
		}
	});
}

