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
	var tbody = document.querySelector('.modal-body table tbody');
	cadena = "cedula=" + cedula;
	$.ajax(
	{
		type:"GET",
		url:"../php/buscaFuncionario.php",
		data: cadena,
		success:function(r)
		{
			data = $.parseJSON(r);
			if(data != null){
				var fila = `
					<tr>
						<td>${data.cedula}</td>
						<td>${data.nombre}</td>
						<td>${data.Provincia}</td>
						<td>${data.Distrito}</td>
						<td>${data.corregimiento}</td>
						<td>${data.facultad}</td>
						<td>${data.carrera}</td>
						<td>${data.anio}</td>
					</tr>
				`;
				tbody.innerHTML = fila;
				$('#Modal').modal('show');
			}
			else
			{
				alert("No existe tal persona");
				
				//buscaPDF(cedula);
			}
		}
	});
}

