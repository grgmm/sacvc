//https://www.w3schools.com/js/js_json_http.asp

flag_id = false; //Codigo que sera ejecutado solo al cargar la pagina
ntanq = 0;//numero de tanques
datos_anterior = null; //Copia de data json de la ultima actualizacion de la vista
flag_blink = false;
flag_lt_critica = [];
flag_lt_urgente = [];
flag_lt_normal = [];


function mi_funcion() {
	var refresca = $.ajax({
		url: 'actualizar/', //url que llamara a la funcion que abre el json
		dataType: 'json', //indicamos que es de tipo json
		type: 'get'
	}).done(function (datos) {
		configurar(datos);
		actualizar_vista(datos);
		manejar_alarmas(datos);

	})
	function configurar(datos) {
		if (!flag_id) {
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
						flag_lt_critica[contador] = false;
						flag_lt_urgente[contador] = false;
						flag_lt_normal[contador] = false;
					}
				}
			}
			//Cambio flag para evitar ejecucion de codigo innecesario
			flag_id = true;
			console.log("selectores id crearos");
		}
	}

	function actualizar_vista(datos) {

		if (JSON.stringify(datos) != JSON.stringify(datos_anterior)) {
			var t = 1;//EMPIEZO POR LA CELDA1 (TANQUE1)
			var valormaximo;//valor del span
			var lt; //valor del nivel actual
			var valorminimo;
			var nivel;

			for (var tk in datos) {
				var idtk = tk.toString(); //tomo el id del tanque, uno por celda
				var tq = t.toString();
				$("#idtanque" + tq).text(datos[idtk]["TANQUE"]);
				$("#tov" + tq).text(datos[idtk]["TOV"]);
				$("#nsv" + tq).text(datos[idtk]["NSV"]);
				lt = datos[idtk]["LT"];
				valorminimo = datos[idtk]["VALORMINIMO"];
				valormaximo = datos[idtk]["VALORMAXIMO"];

				//calculo nivel
				var valor = (100 * (lt - valorminimo) / (valormaximo - valorminimo)).toFixed(2);
				$("#lt" + tq).text(datos[idtk]["LT"]);
				nivel = document.getElementById("barra" + tq); //nivel en UI
				nivel.style.width = valor + "%"; /*barra*/
				$("#nivel" + tq).text(valor + "%");
				t++ //paso a la celda siguiente (tanque)
				datos_anterior = datos;//Evita actualizar datos innecesariamente
			}
			console.log("datos actualizados");
		}
	}

	function manejar_alarmas(datos) {

		var t = 1;//EMPIEZO POR LA CELDA1 (TANQUE1)
		//todo en unidades de ingenieria
		var valormaximo//valor del valormaximo
		var valorminimo;
		var lt_normal;
		var lt_urgente;
		var lt_critica;
		var idtk;//nro del tanque json
		var tq//numero del tanque consecutivo

		for (var tk in datos) {
			idtk = tk.toString(); //tomo el id del tanque, uno por celda
			tq = t.toString();
			lt = datos[idtk]["LT"];
			valorminimo = datos[idtk]["VALORMINIMO"];
			valormaximo = datos[idtk]["VALORMAXIMO"];
			lt_normal = datos[idtk]["LT_NORMAL"];
			lt_urgente = datos[idtk]["LT_URGENTE"];
			lt_critica = datos[idtk]["LT_CRITICA"];
			//Calculo de alarmas


			if (lt_critica) {
				flag_lt_critica[t] = !flag_lt_critica[t];
				$("#barra" + tq).css('background', 'red');
				$("#nivel" + tq).css('color', 'black');
				if (flag_lt_critica[t]) {
					$("#nivel" + tq).css('background', 'red');
				} else {
					$("#nivel" + tq).css('background', 'none');
				}
			}
			if (lt_urgente) {
				//nivel bajo
				flag_lt_urgente[t] = !flag_lt_urgente[t];
				$("#barra" + tq).css('background', 'yellow');
				$("#nivel" + tq).css('background', 'yellow');
				$("#nivel" + tq).css('color', 'black');
				if (flag_lt_urgente[t]) {
					$("#nivel" + tq).css('background', 'yellow');
				} else {
					$("#nivel" + tq).css('background', 'none');
				}
			}
			if (lt_normal) {
				console.log(lt_normal);
				//nivel normañ	
				flag_lt_critica[t] = false;	
				flag_lt_urgente[t] = false;
				$("#barra" + tq).css('background', 'black');
				$("#nivel" + tq).css('color', 'green');
				$("#nivel" + tq).css('background', 'black');
			}
			t++ //paso a la celda siguiente (tanque)
		}

	}
}
setInterval(mi_funcion, 1000);