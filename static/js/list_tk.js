/*https://datatables.net/extensions/scroller/tablas/styling/jqueryui.html */
$(document).ready(function () {
	var equipo = "Tanque";
	$(".even").css("background-color", "#eeeeee");
	$(".odd").css("background-color", "#ffffff");
	var table = $('#tabla').DataTable({
		/*ajax: "./resources/data/2500.json",*/
		dom: 'Blfrtip',
		lengthMenu: [
			[10, 8, 6, 4, 2],
			['10 filas', '8 filas', '6 filas', '4 filas', '2 filas']
		],
		deferRender: true,
		scrollCollapse: true,
		"sPaginationType": "full_numbers", /*Agregado */
		select: 'single', /*Agregado */
		/*
		scrollCollapse: true,
		scroller: true,*/
		/*buttons: ['colvis', 'excel', 'pdf', 'copiar'],*/
		buttons: ['colvis', "csv", 'excel', 'pdf', 'copy', "print",
			{
				extend: 'selected', // Bind to Selected row
				text: '',
				name: 'ver',
				className: 'ver'
			},
			{
				className: 'agregar',
				text: '',
				name: 'agregar',        // do not change name
				action: function (e, dt, node, config) {
					$(".agregar").trigger("click");
					alert('Button activated');
				}

			},
			{
				className: 'editar',
				extend: 'selected', // Bind to Selected row
				text: '',
				name: 'editar'        // do not change name
			},
			{
				className: 'retirar',
				extend: 'selected', // Bind to Selected row
				text: '',
				name: 'retirar'      // do not change name
			},
			{
				className: 'vertct',
				extend: 'selected', // Bind to Selected row
				text: '',
				name: 'vertct'      // do not change name
			}

		],
		"language": {
			"decimal": ",",
			"emptyTable": "No hay datos disponibles en la tabla",
			"info": "Mostrando _START_ a _END_ de _TOTAL_ entradas",
			"infoEmpty": "Mostrando 0 a 0 de 0 entradas",
			"infoFiltered": "(filtrado de un total de _MAX_ entradas)",
			"infoPostFix": "",
			"thousands": ",",
			"lengthMenu": "Muestra:  _MENU_",
			"loadingRecords": "Cargando...",
			"processing": "Procesando...",
			"search": "Buscar:",
			"zeroRecords": "No se encontraron registros coincidentes",
			"paginate": {
				"first": "",
				"last": "",
				"next": "",
				"previous": "",
			},
			"buttons": {
				"colvis": "",
				"csv": "",
				"excel": "",
				"pdf": "",
				"copy": "",
				"print": ""
			},
			"aria": {
				"sortAscending": ": activar para ordenar la columna ascendente",
				"sortDescending": ": activar para ordenar la columna descendente"
			}
		}
	});
	$(".even").css("background-color", "#117a8b");
	$(".odd").css("background-color", "#ffffff");
	$('.buttons-colvis').prop('title', 'Visivilidad de columnas');
	$('.buttons-csv').prop('title', '...a CSV');
	$('.buttons-excel').prop('title', '...a Excel');
	$('.buttons-pdf').prop('title', '...a PDF');
	$('.buttons-copy').prop('title', 'Copiar');
	$('.buttons-print').prop('title', 'Imprimir');
	$('.dataTables_filter input').attr('title', 'Escriba aquì para buscar en la tabla');
	$('.dataTables_length select').attr('title', 'Seleccione el Nro de filas visibles');
	$('.ver').attr('title', 'Ver '+equipo);
	$('.agregar').attr('title', 'Agregar '+equipo);
	$('.editar').attr('title', 'Editar '+equipo);
	$('.retirar').attr('title', 'Retirar '+equipo);
	$('.vertct').attr('title', 'Ver TCT');
	$('.first').attr('title', 'Primero');
	$('.previous').attr('title', 'Anterior');
	$('.next').attr('title', 'Proximo');
	$('.last').attr('title', 'Ultimo');

	table.buttons().container().insertBefore('#tabla_filter');
});