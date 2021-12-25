/*https://datatables.net/extensions/scroller/tablas/styling/jqueryui.html */
$(document).ready(function() {
	$(".even").css("background-color", "#eeeeee");
$(".odd").css("background-color", "#ffffff");
	var table = $('#tabla').DataTable({
		/*ajax: "./resources/data/2500.json",*/
		dom: 'Blfrtip',
		lengthMenu: [
			[10, 8, 6, 4, 2],
			['10 filas','8 filas','6 filas', '4 filas', '2 filas']
		],
		deferRender: true,
		scrollCollapse: true,
		/*
		scrollCollapse: true,
		scroller: true,*/
		/*buttons: ['colvis', 'excel', 'pdf', 'copiar'],*/
		buttons: ['colvis',"csv", 'excel','pdf','copy',"print",
		
		/*boton personalizados aqui 
		{
                text: 'My button',
                action: function ( e, dt, node, config ) {
                    alert( 'Button activated' );
                }
            }
         */
 
		],
		"language": {
			"decimal": ",",
			"emptyTable": "No hay datos disponibles en la tabla",
			"info": "Mostrando _START_ a _END_ de _TOTAL_ entradas",
			"infoEmpty": "Mostrando 0 a 0 de 0 entradas",
			"infoFiltered": "(filtrado de un total de _MAX_ entradas)",
			"infoPostFix": "",
			"thousands": ",",
			"lengthMenu": "Muestra _MENU_",
			"loadingRecords": "Cargando...",
			"processing": "Procesando...",
			"search": "Buscar:",
			"zeroRecords": "No se encontraron registros coincidentes",
			"paginate": {
				"first": "Primero",
				"last": "Ultimo",
				"next": "Proximo",
				"previous": "Previo",
			},
			"buttons": {
				"colvis": "",
				"csv": "",
				"excel": "",
				"pdf": "",
				"copy": "",
				"print": "",
				"create": "Nuevo",
				"edit": "Cambiar", /*no funciona */
				"remove": "Borrar",/*no funciona */
			},
			"aria": {
				"sortAscending": ": activar para ordenar la columna ascendente",
				"sortDescending": ": activar para ordenar la columna descendente"
			}
		}
	});
	$('.buttons-colvis').prop('title', 'Visivilidad de columnas');
	$('.buttons-csv').prop('title', '...a CSV');
	$('.buttons-excel').prop('title', '...a Excel');
	$('.buttons-pdf').prop('title', '...a PDF');
	$('.buttons-copy').prop('title', 'Copiar');
	$('.buttons-print').prop('title', 'Imprimir');
	table.buttons().container().insertBefore('#tabla_filter');
});