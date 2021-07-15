flag_configurar = false; //Codigo que sera ejecutado solo al cargar o refrescar la pagina
ntanq = 0;//numero de tanques
datos_anterior = null; //Copia de json de ultimo refresh
//flag_lt_critica = []; //flag para on/off cuando la alarma esta activa
//flag_lt_urgente = [];//flag para on/off cuando la alarma esta activa
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

						//genero los arrys de alarma	
						//flag_lt_critica[contador] = false;
						//flag_lt_urgente[contador] = false;
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
		var lt; //valor del nivel actual
		var valorminimo;
		var nivel;
		var lt_porcentaje;

		for (var tk in datos) {
			var idtk = tk.toString(); //tomo el id del tanque, uno por celda
			var tq = t.toString();

			$("#idtanque" + tq).text(datos[idtk]["TANQUE"]);
			$("#tov" + tq).text(datos[idtk]["TOV"]);
			$("#nsv" + tq).text(datos[idtk]["NSV"]);
			$("#lt" + tq).text(datos[idtk]["LT"]);
			lt_porcentaje = datos[idtk]["LT_PORCENTAJE"];
			lt = datos[idtk]["LT"];

			nivel = document.getElementById("barra" + tq); //nivel en UI
			nivel.style.width = lt_porcentaje + "%"; //barra de progreso
			$("#nivel" + tq).text(lt_porcentaje + "%");//Valor numerico del nivel
			t++ //paso a la celda siguiente (tanque)
			datos_anterior = datos;//Evita actualizar datos innecesariamente
		}
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
			lt = datos[idtk]["LT"];
			//lt_normal = datos[idtk]["LT_NORMAL"];
			lt_urgente = datos[idtk]["LT_URGENTE"];
			lt_critica = datos[idtk]["LT_CRITICA"];

			//Calculo de alarmas
			if (lt_critica) {
				//flag_lt_critica[t] = !flag_lt_critica[t];
				$("#barra" + tq).css('background', 'red');//color de barra
				$("#nivel" + tq).css('background', 'red');//color de fondo de la fuente
				$("#nivel" + tq).css('color', 'black');//color de fuente
				//if (flag_lt_critica[t]) {
				if (flag_alarma) {
					//on
					$("#nivel" + tq).css('background', 'red');
				} else {
					//off
					$("#nivel" + tq).css('background', 'none');
				}
			} else {
				if (lt_urgente) {
					//flag_lt_urgente[t] = !flag_lt_urgente[t];
					$("#barra" + tq).css('background', 'yellow');//color de barra
					$("#nivel" + tq).css('background', 'yellow');//color de fondo de la fuente
					$("#nivel" + tq).css('color', 'black');//color de fuente
					//if (flag_lt_urgente[t]) {
					if (flag_alarma) {
						$("#nivel" + tq).css('background', 'yellow');
					} else {
						$("#nivel" + tq).css('background', 'none');
					}
				} else {
					//flag_lt_critica[t] = false;
					//flag_lt_urgente[t] = false;
					$("#barra" + tq).css('background', 'black');
					$("#nivel" + tq).css('color', 'green');
					$("#nivel" + tq).css('background', 'black');
				}
			}
			t++ //paso a la celda siguiente (tanque)
		}
		flag_alarma=!flag_alarma;
	}
}
setInterval(mi_funcion, 1000);