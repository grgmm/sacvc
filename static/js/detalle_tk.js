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
			console.log("miTanque " + idtk)
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
		//console.log("dato " + datos[idtk]["LT"] + " " + datos[idtk]["LT_UNIDAD"]);

		//variables principales
		$("#lt").text(datos[idtk]["LT"] + " " + datos[idtk]["LT_UNIDAD"]);
		$("#tov").text(datos[idtk]["TOV"] + " " + datos[idtk]["TOV_UNIDAD"]);
		$("#nsv").text(datos[idtk]["NSV"] + " " + datos[idtk]["NSV_UNIDAD"]);
		$("#gsv").text(datos[idtk]["GSV"] + " " + datos[idtk]["GSV_UNIDAD"]);
		//variables complementarias
		$("#pt").text(datos[idtk]["PT"] + " " + datos[idtk]["LT_UNIDAD"]);
		$("#ays").text(datos[idtk]["AYS"] + " " + datos[idtk]["TOV_UNIDAD"]);
		$("#tt").text(datos[idtk]["TT"] + " " + datos[idtk]["NSV_UNIDAD"]);
		$("#lta").text(datos[idtk]["LTA"] + " " + datos[idtk]["LT_UNIDAD"]);
		//rangos de operacion
		$("#lt_maximo").text(datos[idtk]["LT"] + " " + datos[idtk]["LT_UNIDAD"]);
		$("#lt_minimo").text(datos[idtk]["TOV"] + " " + datos[idtk]["LT_UNIDAD"]);
		$("#tov_maximo").text(datos[idtk]["NSV"] + " " + datos[idtk]["TOV_UNIDAD"]);
		$("#tov_minimo").text(datos[idtk]["GSV"] + " " + datos[idtk]["TOV_UNIDAD"]);



		datos_anterior = datos;//Evita actualizar datos innecesariamente
		console.log("datos actualizados");
	}

	function manejar_alarmas(datos) {
		//solo se ejecuta si el json cambia
		//todo en unidades de ingenieria
		var lt_alarma, pt_alarma, tt_alarma, lta_alarma, ays_alarma, tov_alarma, nsv_alarma, gsv_alarma;
		//recojo estado actual de las alarmas
		lt_alarma = datos[idtk]["LT_ALARMA"];
		pt_alarma = datos[idtk]["PT_ALARMA"];
		tt_alarma = datos[idtk]["TT_ALARMA"];
		lta_alarma = datos[idtk]["LTA_ALARMA"];
		ays_alarma = datos[idtk]["AYS_ALARMA"];
		tov_alarma = datos[idtk]["TOV_ALARMA"];
		lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
		nsv_alarma = datos[idtk]["NSV_ALARMA"];
		gsv_alarma = datos[idtk]["GSV_ALARMA"];
		lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
		nivel = document.getElementById("barra");


		/*para el caso donde lt_porcentaje no contiene un numero;
		Debemos definir un color en la barra y el fondo del valor*/

		if (parseFloat(lt_porcentaje).toString() == "NaN") {
			lt_porcentaje = "--.--"
			nivel.style.width = "100" + "%"; //barra de progreso
			$("#barra").css('background', 'gray');//color de barra
			$("#nivel").css('background', 'gray');//color de fondo de la fuente
			$("#nivel").css('color', 'black');
		}
		nivel.style.width = lt_porcentaje + "%"; //barra de progreso
		$("#nivel").text(lt_porcentaje + "%");//Valor numerico del nivel

		//ESTADO DE ALARMAS
		//ALARMA LT
		if (lt_alarma == "C") {
			//barra de progreso y nivel
			$("#barra").css('background', 'red');//color de barra
			//$("#nivel").css('background', 'red');//color de fondo de la fuente
			$("#nivel").css('color', 'black');//color de fuente

			//Alarma en la tabla
			$("#lt_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#nivel").css('background', 'red');
				$("#lt_alarma").css('background', 'red');//alarma en la tabla
			} else {
				//off
				$("#nivel").css('background', 'none');
				$("#lt_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (lt_alarma == "U") {
				$("#barra").css('background', 'yellow');//color de barra
				$("#nivel").css('background', 'yellow');//color de fondo de la fuente
				$("#nivel").css('color', 'black');//color de fuente//Alarma en la tabla
				$("#lt_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#nivel").css('background', 'yellow');
					$("#lt_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#nivel").css('background', 'none');
					$("#lt_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#barra").css('background', 'black');
				$("#nivel").css('color', 'green');
				$("#nivel").css('background', 'black');
				$("#lt_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		//ALARMA PT
		if (pt_alarma == "C") {
			//Alarma en la tabla
			$("#pt_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#pt_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#pt_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (pt_alarma == "U") {
				$("#pt_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#pt_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#pt_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#pt_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		//ALARMA TT
		if (tt_alarma == "C") {
			//Alarma en la tabla
			$("#tt_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#tt_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#tt_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (tt_alarma == "U") {
				$("#tt_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#tt_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#tt_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#tt_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		//ALARMA LTA
		if (lta_alarma == "C") {
			//Alarma en la tabla
			$("#lta_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#lta_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#lta_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (lta_alarma == "U") {
				$("#lta_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#lta_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#lta_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#lta_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		//ALARMA AYS
		if (ays_alarma == "C") {
			//Alarma en la tabla
			$("#ays_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#ays_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#ays_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (ays_alarma == "U") {
				$("#ays_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#ays_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#ays_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#ays_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		//ALARMA TOV
		if (tov_alarma == "C") {
			//Alarma en la tabla
			$("#tov_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#tov_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#tov_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (tov_alarma == "U") {
				$("#tov_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#tov_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#tov_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#tov_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		//ALARMA NSV
		if (nsv_alarma == "C") {
			//Alarma en la tabla
			$("#nsv_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#nsv_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#nsv_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (nsv_alarma == "U") {
				$("#nsv_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#nsv_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#nsv_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#nsv_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		//ALARMA NSV
		if (nsv_alarma == "C") {
			//Alarma en la tabla
			$("#nsv_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#nsv_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#nsv_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (nsv_alarma == "U") {
				$("#nsv_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#nsv_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#nsv_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#nsv_alarma").css('background', 'white');//alarma en la tabla
			}
		}

		console.log("Alarma "+gsv_alarma)
		//ALARMA GSV
		if (gsv_alarma == "C") {
			//Alarma en la tabla
			console.log("Alarma "+gsv_alarma)
			$("#gsv_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#gsv_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#gsv_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (gsv_alarma == "U") {
				$("#gsv_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#gsv_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#gsv_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#gsv_alarma").css('background', 'white');//alarma en la tabla
			}
		}

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