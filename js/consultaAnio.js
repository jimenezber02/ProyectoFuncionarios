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
	var tbody = document.querySelector('.modal-body table tbody');
	cadena="anio="+dato;
	$.ajax(
	{
		type:"GET",
		url:"../php/buscaFuncionario2.php",
		data: cadena,
		success:function(r)
		{
			
			data = $.parseJSON(r);
			fila = "";
			data.forEach(function(item,index){
				var celdas = `
					<tr>
						<td>${item.cedula}</td>
						<td>${item.nombre}</td>
						<td>${item.Provincia}</td>
						<td>${item.Distrito}</td>
						<td>${item.corregimiento}</td>
						<td>${item.facultad}</td>
						<td>${item.carrera}</td>
						<td>${item.anio}</td>
					</tr>
				`;
				fila += celdas;
			});
			tbody.innerHTML = fila;
			$('#Modal').modal('show');
			/*if(r > 0)
			{
				//alert("Si existen datos");
				$('#Modal').modal('show');
				//window.open("../php/PDFanio.php?anio="+dato,"_blank");
				//window.location.href="../index.html";
			}
			else
			{
				alert("No existen Datos");
				//buscaPDF(cedula);
			}*/
		}
	});
}

