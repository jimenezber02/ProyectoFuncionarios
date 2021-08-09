window.onload=function()
{
	$(document).ready(function()
	{
		$("#crear").click(function()
		{
			tabla=$("#tabla").val();
			creaTabla(tabla);
		});
	});
}

function creaTabla(tabla)
{
	cadena="tabla="+tabla;
	$.ajax(
	{
		type:"POST",
		url:"../php/creaTabla.php",
		data:cadena,
		success:function(r)
		{
			console.log(r);
			if(r==1)
			{
				alert("Tabla "+tabla+" creada correctamente");
				window.location.href="../index.html";
			}
			else
			{
				alert("Ha ocurrido un error");
			}
		}
	});
	
}