datos_anterior = null; //Copia de json de ultimo refresh
flag_alarma = false;
var idtk;

function mi_funcion() {
	var refresca = $.ajax({
		url: 'actualizar/', //url que llamara a la funcion que abre el json
		dataType: 'json', //indicamos que es de tipo json
		type: 'get'
	}).done(function (datos) {
		if (JSON.stringify(datos) != JSON.stringify(datos_anterior)) {
			idtk = document.getElementById("nrotanque").innerHTML;
			console.log("miTanque "+idtk)
			//solo se ejecuta si el json cambia
			actualizar_vista(datos);
		}
		//debe actualizarse cada refresh para que pueda existir el blinking
		manejar_alarmas(datos);
	})

	function actualizar_vista(datos) {
		//solo se ejecuta si el json cambia
		var valormaximo;//valor del span
		var valorminimo;
		var nivel;
		var lt_porcentaje;

		//console.log("Nro de tanque "+idtk);
		//$("#idtanque").text(datos[idtk]["TANQUE"]);
		lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
		//console.log(idtk + "  " + lt_porcentaje)
		nivel = document.getElementById("barra"); //nivel en UI
		nivel.style.width = lt_porcentaje + "%"; //barra de progreso
		$("#nivel").text(lt_porcentaje + "%");//Valor numerico del nivel
		console.log("dato "+datos[idtk]["LT"]+" "+datos[idtk]["LT_UNIDAD"]);
		$("#lt").text(datos[idtk]["LT"]+" "+datos[idtk]["LT_UNIDAD"]);
		$("#tov").text(datos[idtk]["TOV"]+" "+datos[idtk]["TOV_UNIDAD"]);
		$("#nsv").text(datos[idtk]["NSV"]+" "+datos[idtk]["NSV_UNIDAD"]);
		$("#gsv").text(datos[idtk]["GSV"]+" "+datos[idtk]["GSV_UNIDAD"]);
		
		
		datos_anterior = datos;//Evita actualizar datos innecesariamente
		console.log("datos actualizados");
	}

	function manejar_alarmas(datos) {
		//solo se ejecuta si el json cambia
		//todo en unidades de ingenieria
		var lt_urgente;
		var lt_critica;

			lt_urgente = datos[idtk]["LT_URGENTE"];
			lt_critica = datos[idtk]["LT_CRITICA"];

			//Calculo de alarmas
			if (lt_critica) {
				$("#barra").css('background', 'red');//color de barra
				$("#nivel").css('background', 'red');//color de fondo de la fuente
				$("#nivel").css('color', 'black');//color de fuente
				if (flag_alarma) {
					//on
					$("#nivel").css('background', 'red');
				} else {
					//off
					$("#nivel").css('background', 'none');
				}
			} else {
				if (lt_urgente) {
					$("#barra").css('background', 'yellow');//color de barra
					$("#nivel").css('background', 'yellow');//color de fondo de la fuente
					$("#nivel").css('color', 'black');//color de fuente
					if (flag_alarma) {
						$("#nivel").css('background', 'yellow');
					} else {
						$("#nivel").css('background', 'none');
					}
				} else {
					$("#barra").css('background', 'black');
					$("#nivel").css('color', 'green');
					$("#nivel").css('background', 'black');
				}
			}
			/*para el caso donde lt_porcentaje no contiene un numero;
			Debemos definir un color en la barra y el fondo del valor*/
			lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
			nivel = document.getElementById("barra");

			if (parseFloat(lt_porcentaje).toString() == "NaN") {
				lt_porcentaje = "--.--"
				nivel.style.width = "100" + "%"; //barra de progreso
				$("#barra").css('background', 'gray');//color de barra
				$("#nivel").css('background', 'gray');//color de fondo de la fuente
				$("#nivel").css('color', 'black');
			}
			nivel.style.width = lt_porcentaje + "%"; //barra de progreso
			$("#nivel").text(lt_porcentaje + "%");//Valor numerico del nivel

		flag_alarma = !flag_alarma;
	}

}
setInterval(mi_funcion, 1000);


/*----------------------------------------- */

/*
function configurar(datos) {
	if (!flag_configurar) {
		//Este codigo solo se ejecutara al cargar o refrescar la pagina
		//obtengo el numero de tanques
		for (var tk in datos) {
			ntanq++;
		}
		//Renonbro los selectores id en tiempo de vuelo
		generar_ids("tanque");
		generar_ids("idtanque");
		generar_ids("nivel");
		generar_ids("contenedor_barra");
		generar_ids("barra");
		generar_ids("tablaInterna");
		generar_ids("tov");
		generar_ids("nsv");
		generar_ids("barra");
		generar_ids("lt");

		function generar_ids(id) {
			var contador = 0;
			for (var i = 0; i < ntanq; i++) {
				contador++;
				var mi_id = document.getElementById(id);
				if (mi_id != null) {
					var att = document.createAttribute("id");
					att.value = id + contador.toString();
					mi_id.setAttributeNode(att);
				}
			}
		}
		//Cambio flag para evitar ejecucion de codigo innecesario
		flag_configurar = true;
		console.log("selectores id crearos");
	}
}
*/