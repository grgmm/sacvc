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
			console.log("Nro tanque " + idtk+"; tt_unidad "+datos[idtk]["TT_UNIDAD"]+"; lta_unidad "+datos[idtk]["LTA_UNIDAD"])
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
		$("#pt").text(datos[idtk]["PT"] + " " + datos[idtk]["PT_UNIDAD"]);
		$("#ays").text(datos[idtk]["AYS"] + " " + datos[idtk]["AYS_UNIDAD"]);
		$("#tt").text(datos[idtk]["TT"] + " " + datos[idtk]["TT_UNIDAD"]);
		$("#lta").text(datos[idtk]["LTA"] + " " + datos[idtk]["LTA_UNIDAD"]);
		
		//rangos de operacion
/*		Esto valores son estaticos
		$("#lt_maximo").text(document.getElementById("lt_maximo").innerHTML + " " + datos[idtk]["LT_UNIDAD"]);
		$("#lt_minimo").text(datos[idtk]["TOV"] + " " + datos[idtk]["LT_UNIDAD"]);
		$("#tov_maximo").text(datos[idtk]["NSV"] + " " + datos[idtk]["TOV_UNIDAD"]);
		$("#tov_minimo").text(datos[idtk]["GSV"] + " " + datos[idtk]["TOV_UNIDAD"]);
*/
		datos_anterior = datos;//Evita actualizar datos innecesariamente
		//console.log("datos actualizados");
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
			//Visibilidad del link de detalle
			document.getElementById('link_lt').style.display = 'inline';
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
				//Visibilidad del link de detalle
				document.getElementById('link_lt').style.display = 'inline';
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
				//Visibilidad del link de detalle
				document.getElementById('link_lt').style.display = 'none';
			}
		}

		//ALARMA PT
		if (pt_alarma == "C") {
			//Visibilidad del link de detalle
			document.getElementById('link_pt').style.display = 'inline';
			//Alarma en la tabla
			$("#pt_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#pt_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#pt_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (pt_alarma == "U") {
				//Visibilidad del link de detalle
				document.getElementById('link_pt').style.display = 'inline';
				$("#pt_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#pt_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#pt_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#pt_alarma").css('background', 'white');//alarma en la tabla
				//Visibilidad del link de detalle
				document.getElementById('link_pt').style.display = 'none';
			}
		}

		//ALARMA TT
		if (tt_alarma == "C") {
			//Visibilidad del link de detalle
			document.getElementById('link_tt').style.display = 'inline';
			//Alarma en la tabla
			$("#tt_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#tt_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#tt_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (tt_alarma == "U") {
				//Visibilidad del link de detalle
				document.getElementById('link_tt').style.display = 'inline';
				$("#tt_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#tt_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#tt_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#tt_alarma").css('background', 'white');//alarma en la tabla
				//Visibilidad del link de detalle
				document.getElementById('link_tt').style.display = 'none';
			}
		}

		//ALARMA LTA
		if (lta_alarma == "C") {
			//Visibilidad del link de detalle
			document.getElementById('link_lta').style.display = 'inline';
			//Alarma en la tabla
			$("#lta_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#lta_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#lta_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (lta_alarma == "U") {
				//Visibilidad del link de detalle
				document.getElementById('link_lta').style.display = 'inline';
				$("#lta_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#lta_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#lta_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#lta_alarma").css('background', 'white');//alarma en la tabla
				//Visibilidad del link de detalle
				document.getElementById('link_lta').style.display = 'none';
			}
		}

		//ALARMA AYS
		if (ays_alarma == "C") {
			//Visibilidad del link de detalle
			document.getElementById('link_ays').style.display = 'inline';
			//Alarma en la tabla
			$("#ays_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#ays_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#ays_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			//Visibilidad del link de detalle
			document.getElementById('link_ays').style.display = 'inline';
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
				//Visibilidad del link de detalle
				document.getElementById('link_ays').style.display = 'none';
			}
		}

		//ALARMA TOV
		if (tov_alarma == "C") {
			//Visibilidad del link de detalle
			document.getElementById('link_tov').style.display = 'inline';
			//Alarma en la tabla
			$("#tov_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#tov_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#tov_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (tov_alarma == "U") {
				//Visibilidad del link de detalle
				document.getElementById('link_tov').style.display = 'inline';
				$("#tov_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#tov_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#tov_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#tov_alarma").css('background', 'white');//alarma en la tabla
				//Visibilidad del link de detalle
				document.getElementById('link_tov').style.display = 'none';
			}
		}

		//ALARMA NSV
		if (nsv_alarma == "C") {
			//Visibilidad del link de detalle
			document.getElementById('link_nsv').style.display = 'inline';
			//Alarma en la tabla
			$("#nsv_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#nsv_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#nsv_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (nsv_alarma == "U") {
				//Visibilidad del link de detalle
				document.getElementById('link_nsv').style.display = 'inline';
				$("#nsv_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#nsv_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#nsv_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#nsv_alarma").css('background', 'white');//alarma en la tabla
				//Visibilidad del link de detalle
				document.getElementById('link_nsv').style.display = 'none';
			}
		}
		//ALARMA GSV
		if (gsv_alarma == "C") {
			//Visibilidad del link de detalle
			document.getElementById('link_gsv').style.display = 'inline';
			//Alarma en la tabla
			$("#gsv_alarma").css('background', 'red');

			if (flag_alarma) {
				$("#gsv_alarma").css('background', 'red');//alarma en la tabla
			} else {
				$("#gsv_alarma").css('background', 'white');//alarma en la tabla
			}
		} else {
			if (gsv_alarma == "U") {
				//Visibilidad del link de detalle
				document.getElementById('link_gsv').style.display = 'inline';
				$("#gsv_alarma").css('background', 'yellow');
				if (flag_alarma) {
					$("#gsv_alarma").css('background', 'yellow');//alarma en la tabla
				} else {
					$("#gsv_alarma").css('background', 'white');//alarma en la tabla
				}
			} else {
				//sin alarmas
				$("#gsv_alarma").css('background', 'white');//alarma en la tabla
				//Visibilidad del link de detalle
				document.getElementById('link_gsv').style.display = 'none';
			}
		}

		flag_alarma = !flag_alarma;
	}

}
setInterval(mi_funcion, 1000);


