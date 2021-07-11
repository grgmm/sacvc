//https://www.w3schools.com/js/js_json_http.asp

flag_id = false; //Codigo que sera ejecutado solo al cargar la pagina
ntanq = 0;//numero de tanques
datos_anterior=null;
function mi_funcion() {
	var refresca = $.ajax({
		url: 'actualizar/', //url que llamara a la vista que abre el json
		dataType: 'json', //indicamos que es de tipo json
		type: 'get'
	}).done(function (datos) {

		if (!flag_id) {
			//Este codigo solo se ejecutara al cargar o refrescar la pagina
			//obtengo el numero de tanques
			for (var tk in datos) {
				ntanq++;
			}
			//Renonbro los selectores id en tiempo de vuelo
			asignar_id("tanque");
			asignar_id("idtanque");
			asignar_id("nivel");
			asignar_id("contenedor_barra");
			asignar_id("barra");
			asignar_id("tablaInterna");
			asignar_id("tov");
			asignar_id("nsv");
			asignar_id("barra");
			asignar_id("lt");

			function asignar_id(id) {
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
			//Cambio flag para evitar ejecucion de codigo
			flag_id = true;
			console.log("creo selectores");
		}

		if (JSON.stringify(datos) != JSON.stringify(datos_anterior)) {
			var t = 1;//EMPIEZO POR LA CELDA1 (TANQUE1)
			for (var tk in datos) {
				var idtk = tk.toString(); //tomo el id del tanque, uno por celda
				var tq = t.toString();
				$("#idtanque" + tq).text(datos[idtk]["TANQUE"]);
				$("#tov" + tq).text(datos[idtk]["TOV"]);
				$("#nsv" + tq).text(datos[idtk]["NSV"]);
				//calculo nivel
				var lt=datos[idtk]["LT"];
				var idlt=datos[idtk]["IDLT"];
				var nivel=(100*lt/idlt).toFixed(2);
				$("#lt" + tq).text(datos[idtk]["LT"]);
				var elem = document.getElementById("barra"+tq);
				elem.style.width = nivel + "%"; /*barra*/
				$("#nivel" + tq).text(nivel+"%");
				console.log(nivel);
				t++ //paso a la celda siguiente (tanque)
				datos_anterior = datos;
				console.log("cambio dato");
			}
		}

		
			
	})
}
setInterval(mi_funcion, 1000);