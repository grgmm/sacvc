
$(document).ready(function() {
	/*funcion para crear un datepicker */
	$(function() {
		/*$.datepicker("option", "disabled", true);*/
		$(".fechaSubidaTct").datepicker({
			firstDay: 1, /*la semana comienza el lunes */
			showWeek: true,/*Mostrar la semana del año */
			/*showButtonPanel: true,*/
			changeMonth: true,
			changeYear: true,
			yearRange: "1900:2050",
			onSelect: function(date) {
				alert(date)
			},
		});
	});

	/*funcion para crear un dialogo */
	$(function() {
		j = 1.1/*factor de ancho del panelgrid */
		$(".panel").css("width", j * $(".panel").width()); /*Ajuste de anchoPG del panelgrid */
		anchoPG = $(".panel").width(); /*anchoPG actual del panelgrid */
		anchoCE = Math.ceil(1.05 * anchoPG) /*Ancho de contenedores externos */
		/*Pongo el titulo del <h:panelGroup id="ventana"*/
		document.getElementById('ventana').title = 'AGREGAR NUEVO TANQUE';
		$("#ventana").dialog({
			autoOpen: false,
			opacity: .2,
			modal: true,
			resizable:false,
			draggable:true,
			width: anchoCE,/*ancho del div */
			show: { effect: efectos() },
			hide: { effect: efectos() },
			buttons: {
				"Enviar": function(event) {
					event.preventDefault();
					$(this).dialog("close");
				/*	$(".enviar").trigger("click");*/
				},
				"Cancelar": function(event) {
					event.preventDefault();
					$(this).dialog("close");
				}
			}
		});

		$("#agregar1").on("click", function(e) {
			e.preventDefault();
			$(".ui-dialog").css("width", anchoCE);/*ancho del dialog */
			$("#ventana").dialog("open");
		});
	});

	/*Example6 */

	/*funcion para crear un dialogo */
	$(function() {
		j = 1.1/*factor de ancho del panelgrid */
		$(".panel").css("width", j * $(".panel").width()); /*Ajuste de anchoPG del panelgrid */
		anchoPG = $(".panel").width(); /*anchoPG actual del panelgrid */
		anchoCE = Math.ceil(1.05 * anchoPG) /*Ancho de contenedores externos */
		/*Pongo el titulo del <h:panelGroup id="ventana"*/
		document.getElementById('ventana').title = 'AGREGAR NUEVO TANQUE';
		$("#ventana").dialog({
			autoOpen: false,
			modal: true,
			width: anchoCE,/*ancho del div */
			show: { effect: efectos() },
			hide: { effect: efectos() },
			buttons: {
				"Enviar": function(event) {
					$(this).dialog("close");
					$(".enviar").trigger("click");
				},
				"Cancelar": function(event) {
					event.preventDefault();
					$(this).dialog("close");
				}
			}
		});

		$("#abrirDialogo").on("click", function(e) {
			e.preventDefault();
			$(".ui-dialog").css("width", anchoCE);/*ancho del dialog */
			$(".ui-button").css("color", "white");
			$("#ventana").dialog("open");
		});
	});

	function efectos() {
		var a = ""; 	//animacion de apertura
		//animacion de apertura
		var r = Math.floor(Math.random() * 14);
		console.log(r)
		switch (r) {
			case 0:
				a = 'blind'
				break;
			case 1:
				a = 'bounce'
				break;
			case 2:
				a = "clip"
				break;
			case 3:
				a = "drop"
				break;
			case 4:
				a = "explode"
				break;
			case 5:
				a = "fade"
				break;
			case 6:
				a = "fold"
				break;
			case 7:
				a = "highlight"
				break;
			case 8:
				a = "puf"
				break;
			case 9:
				a = "pulsate"
				break;
			case 10:
				a = "scale"
				break;
			case 11:
				a = "shake"
				break;
			case 12:
				a = "size"
				break;
			case 13:
				a = "slide"
				break;
		}
		return a
	}
});

function validaEnteros(id) {
	//  /^-?[1-9][0-9]*(.[0-9]+)?$/  Solo decimales con separador ,
	/*
	^: Start at the beginning of the input.
	-?: Optional negative sign.
	[1-9]: The first character must be a digit in the range 1-9 (i.e. no leading zeros).
	[0-9]* That must be followed by zero or more digits in the range 0-9.
	(.[0-9]+)?: That can optionally be followed by a decimal point and one or more digits in the range 0-9.
	$: One you get here, it must be the end of the number.
	 */
	var theEvent = window.event || event;
	var key = theEvent.keyCode || theEvent.which;
	var keyregex = String.fromCharCode(key);
	keyString = String.fromCharCode(key);
	var objeto = document.getElementById(id)
	var valor = document.getElementById(id).getAttribute('value')
	console.log(objeto) //objeto recuperado inputText
	console.log("Aschii " + key) //Valor aschii de la tecla presionada
	console.log("keyString " + keyString) //valor caracter de la tecla presionada
	console.log("value " + valor) //solo se actualizara en el evento submit

	var regex = new RegExp(/\D/g);
	//if (key == 46 || (key >= 48 && key <= 57)) {
	if (!regex.test(keyregex)) {
		console.log("Aschii filtrado " + key) //Valor aschii de la tecla presionada	
		theEvent.returnValue = true;
	} else {
		theEvent.returnValue = false;
	}
}

function validaDecimal(id) {
	//id se trae como parametro para futuros usos
	var theEvent = window.event || event;
	var key = theEvent.keyCode || theEvent.which;
	var keyregex = String.fromCharCode(key);

	/*
	keyString = String.fromCharCode(key);
	var objeto = document.getElementById(id)
	var valor = document.getElementById(id).getAttribute('value')
	console.log(objeto) //objeto recuperado inputText
	console.log("Aschii " + key) //Valor aschii de la tecla presionada
	console.log("keyString " + keyString) //valor caracter de la tecla presionada
	console.log("value " + valor) //solo se actualizara en el evento submit
	*/

	var regex = new RegExp(/[^0-9\.]/g);
	if (!regex.test(keyregex)) {
		//console.log("Aschii filtrado " + key) //Valor aschii de la tecla presionada	
		theEvent.returnValue = true;
	} else {
		theEvent.returnValue = false;
	}
}