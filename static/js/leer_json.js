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

	function actualizar_vista(datos) {
		//solo se ejecuta si el json cambia
		var t = 1;//EMPIEZO POR LA CELDA1 (TANQUE1)
		var valormaximo;//valor del span
		var valorminimo;
		var nivel;
		var lt_porcentaje;

		for (var tk in datos) {
			var idtk = tk.toString(); //tomo el id del tanque, uno por celda
			var tq = t.toString();

			$("#idtanque" + tq).text(datos[idtk]["TANQUE"]);
			$("#tov" + tq).text(datos[idtk]["TOV"]+" "+datos[idtk]["TOV_UNIDAD"]);
			$("#nsv" + tq).text(datos[idtk]["NSV"]+" "+datos[idtk]["NSV_UNIDAD"]);
			$("#lt" + tq).text(datos[idtk]["LT"]+" "+datos[idtk]["LT_UNIDAD"]);
			lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
			nivel = document.getElementById("barra" + tq); //nivel en UI
			nivel.style.width = lt_porcentaje + "%"; //barra de progreso
			$("#nivel" + tq).text(lt_porcentaje + "%");//Valor numerico del nivel
			t++ //paso a la celda siguiente (tanque)
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
		var tq//numero del tanque consecutivo

		for (var tk in datos) {
			idtk = tk.toString(); //tomo el id del tanque, uno por celda
			tq = t.toString();
			lt_urgente = datos[idtk]["LT_URGENTE"];
			lt_critica = datos[idtk]["LT_CRITICA"];

			//Calculo de alarmas
			if (lt_critica) {
				$("#barra" + tq).css('background', 'red');//color de barra
				$("#nivel" + tq).css('background', 'red');//color de fondo de la fuente
				$("#nivel" + tq).css('color', 'black');//color de fuente
				if (flag_alarma) {
					//on
					$("#nivel" + tq).css('background', 'red');
				} else {
					//off
					$("#nivel" + tq).css('background', 'none');
				}
			} else {
				if (lt_urgente) {
					$("#barra" + tq).css('background', 'yellow');//color de barra
					$("#nivel" + tq).css('background', 'yellow');//color de fondo de la fuente
					$("#nivel" + tq).css('color', 'black');//color de fuente
					if (flag_alarma) {
						$("#nivel" + tq).css('background', 'yellow');
					} else {
						$("#nivel" + tq).css('background', 'none');
					}
				} else {
					$("#barra" + tq).css('background', 'black');
					$("#nivel" + tq).css('color', 'green');
					$("#nivel" + tq).css('background', 'black');
				}
			}
			/*para el caso donde lt_porcentaje no contiene un numero;
			Debemos definir un color en la barra y el fondo del valor*/
			lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
			nivel = document.getElementById("barra" + tq);
			console.log(parseFloat(lt_porcentaje)); //nivel en UI
			console.log(typeof (parseFloat(lt_porcentaje)));
			//console.log(typeof (parseFloat(lt_porcentaje).toString()));

			if(parseFloat(lt_porcentaje).toString()=="NaN"){
				lt_porcentaje="--.--"
				nivel.style.width = "100" + "%"; //barra de progreso
				$("#barra" + tq).css('background', 'gray');//color de barra
				$("#nivel" + tq).css('background', 'gray');//color de fondo de la fuente
				$("#nivel" + tq).css('color', 'black');
			}
			nivel.style.width = lt_porcentaje + "%"; //barra de progreso
			$("#nivel" + tq).text(lt_porcentaje + "%");//Valor numerico del nivel

			t++ //paso a la celda siguiente (tanque)
		}
		flag_alarma=!flag_alarma;
	}
}
setInterval(mi_funcion, 1000);