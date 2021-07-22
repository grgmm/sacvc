flag_configurar = false; //Codigo que sera ejecutado solo al cargar o refrescar la pagina
ntanq = 0;//numero de tanques
datos_anterior = null; //Copia de json de ultimo refresh
flag_alarma=false;

function mi_funcion() {
	var refresca = $.ajax({
		url: 'actualizar/', //url que llamara a la funcion que abre el json
		dataType: 'json', //indicamos que es de tipo json
		type: 'get'
	}).done(function (datos) {
		if (!flag_configurar) {
			configurar(datos);
		}
		if (JSON.stringify(datos) != JSON.stringify(datos_anterior)) {
			//solo se ejecuta si el json cambia
			actualizar_vista(datos);
		}
		//debe actualizarse cada refresh para que pueda existir el blinking
		manejar_alarmas(datos);
	})
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
				for (var tk in datos) {
					var idtk = tk.toString();
					var mi_id = document.getElementById(id);
					if (mi_id != null) {
						var att = document.createAttribute("id");
						att.value = id + idtk;
						mi_id.setAttributeNode(att);
					}
				}
			}
			//Cambio flag para evitar ejecucion de codigo innecesario
			flag_configurar = true;
			console.log("selectores id crearos");
		}
	}

	function actualizar_vista(datos) {
		//solo se ejecuta si el json cambia
		var valormaximo;//valor del span
		var valorminimo;
		var nivel;
		var lt_porcentaje;

		for (var tk in datos) {
			var idtk = tk.toString(); //tomo el id del tanque, uno por celda

			$("#idtanque" + idtk).text(datos[idtk]["TANQUE"]);
			$("#tov" + idtk).text(datos[idtk]["TOV"]+" "+datos[idtk]["TOV_UNIDAD"]);
			$("#nsv" + idtk).text(datos[idtk]["NSV"]+" "+datos[idtk]["NSV_UNIDAD"]);
			$("#lt" + idtk).text(datos[idtk]["LT"]+" "+datos[idtk]["LT_UNIDAD"]);
			lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
			console.log("+idtk+"  "+lt_porcentaje)
			nivel = document.getElementById("barra" + idtk); //nivel en UI
			nivel.style.width = lt_porcentaje + "%"; //barra de progreso
			$("#nivel" + idtk).text(lt_porcentaje + "%");//Valor numerico del nivel
		}
		datos_anterior = datos;//Evita actualizar datos innecesariamente
		console.log("datos actualizados");
	}

	function manejar_alarmas(datos) {
		//solo se ejecuta si el json cambia
		var t = 1;//EMPIEZO POR LA CELDA1 (TANQUE1)
		//todo en unidades de ingenieria
		var lt_urgente;
		var lt_critica;
		var idtk;//nro del tanque json

		for (var tk in datos) {
			idtk = tk.toString(); //tomo el id del tanque, uno por celda
			lt_urgente = datos[idtk]["LT_URGENTE"];
			lt_critica = datos[idtk]["LT_CRITICA"];

			//Calculo de alarmas
			if (lt_critica) {
				$("#barra" + idtk).css('background', 'red');//color de barra
				$("#nivel" + idtk).css('background', 'red');//color de fondo de la fuente
				$("#nivel" + idtk).css('color', 'black');//color de fuente
				if (flag_alarma) {
					//on
					$("#nivel" + idtk).css('background', 'red');
				} else {
					//off
					$("#nivel" + idtk).css('background', 'none');
				}
			} else {
				if (lt_urgente) {
					$("#barra" + idtk).css('background', 'yellow');//color de barra
					$("#nivel" + idtk).css('background', 'yellow');//color de fondo de la fuente
					$("#nivel" + idtk).css('color', 'black');//color de fuente
					if (flag_alarma) {
						$("#nivel" + idtk).css('background', 'yellow');
					} else {
						$("#nivel" + idtk).css('background', 'none');
					}
				} else {
					$("#barra" + idtk).css('background', 'black');
					$("#nivel" + idtk).css('color', 'green');
					$("#nivel" + idtk).css('background', 'black');
				}
			}
			/*para el caso donde lt_porcentaje no contiene un numero;
			Debemos definir un color en la barra y el fondo del valor*/
			lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
			nivel = document.getElementById("barra" + idtk);

			if(parseFloat(lt_porcentaje).toString()=="NaN"){
				lt_porcentaje="--.--"
				nivel.style.width = "100" + "%"; //barra de progreso
				$("#barra" + idtk).css('background', 'gray');//color de barra
				$("#nivel" + idtk).css('background', 'gray');//color de fondo de la fuente
				$("#nivel" + idtk).css('color', 'black');
			}
			nivel.style.width = lt_porcentaje + "%"; //barra de progreso
			$("#nivel" + idtk).text(lt_porcentaje + "%");//Valor numerico del nivel
		}
		flag_alarma=!flag_alarma;
	}
}
setInterval(mi_funcion, 1000);