//https://www.w3schools.com/js/js_json_http.asp

var datos_json = `{
	"20": {
		"TANQUE": 20,
		"IDTOV": 74,
		"IDNSV": 76,
		"IDGSV": 75,
		"IDLT": 69,
		"IDPT": 70,
		"IDTT": 71,
		"IDLTA": 72,
		"IDAYS": 73,
		"TOV": "1.0",
		"GSV": "6.2830.0",
		"NSV": "2.0",
		"LT": "3.0",
		"PT": "0.0",
		"TT": "0.0",
		"LTA": "0.0",
		"AYS": "0.0",
		"TIMESTAMP_lt": "",
		"TIMESTAMP_pt": "",
		"TIMESTAMP_tt": "",
		"TIMESTAMP_lta": "",
		"TIMESTAMP_ays": "",
		"TIMESTAMP_TOV": "2021-06-29 11:54:23",
		"TIMESTAMP_GSV": "2021-06-29 11:54:23",
		"TIMESTAMP_NSV": "2021-06-29 11:54:23",
		"INDEXADO": 0
	},
	"22": {
		"TANQUE": 22,
		"IDTOV": 90,
		"IDNSV": 92,
		"IDGSV": 91,
		"IDLT": 85,
		"IDPT": 86,
		"IDTT": 87,
		"IDLTA": 88,
		"IDAYS": 89,
		"TOV": "4.0",
		"GSV": "310897.0",
		"NSV": "5.0",
		"LT": "6.0",
		"PT": "0.0",
		"TT": "0.0",
		"LTA": "0.0",
		"AYS": "0.0",
		"TIMESTAMP_lt": "",
		"TIMESTAMP_pt": "",
		"TIMESTAMP_tt": "",
		"TIMESTAMP_lta": "",
		"TIMESTAMP_ays": "",
		"TIMESTAMP_TOV": "2021-06-29 11:54:29",
		"TIMESTAMP_GSV": "2021-06-29 11:54:29",
		"TIMESTAMP_NSV": "2021-06-29 11:54:29",
		"INDEXADO": 0
	},
	"24": {
		"TANQUE": 24,
		"IDTOV": 114,
		"IDNSV": 116,
		"IDGSV": 115,
		"IDLT": 109,
		"IDPT": 110,
		"IDTT": 111,
		"IDLTA": 112,
		"IDAYS": 113,
		"TOV": "7.0",
		"GSV": "469877.0",
		"NSV": "8.0",
		"LT": "9.0",
		"PT": "0.0",
		"TT": "0.0",
		"LTA": "0.0",
		"AYS": "0.0",
		"TIMESTAMP_lt": "",
		"TIMESTAMP_pt": "",
		"TIMESTAMP_tt": "",
		"TIMESTAMP_lta": "",
		"TIMESTAMP_ays": "",
		"TIMESTAMP_TOV": "2021-06-29 11:54:07",
		"TIMESTAMP_GSV": "2021-06-29 11:54:07",
		"TIMESTAMP_NSV": "2021-06-29 11:54:07",
		"INDEXADO": 0
	}
}`;


$(document).ready(function () {
	setInterval(mi_funcion, 1000);

	function mi_funcion() {

		/*
		var request = new XMLHttpRequest();
		var url = "media/Data/Buffer_Datos_Calculados.json";
		//var url = "Buffer_Datos_Calculados.json";
		request.open("GET", url, true);
		request.send(null)
		//if (this.readyState == 4 && this.status == 200) {
		//convierte objeto json a objeto js
		 var myArr = JSON.parse(request.responseText);
		*/
		var mis_datos = JSON.parse(datos_json);
		ver_valores(mis_datos);
		//}

		function ver_valores(datos) {

			for (var tk in datos) {
				//if (myArr[tk] instanceof Object) {
				var idtk = tk.toString();
				console.log(idtk);
				$(".tov").text(datos[idtk]["TOV"]);
				$(".nsv").text(datos[idtk]["NSV"]);
				$(".lt").text(datos[idtk]["LT"]);
				//};
			}
			var x = document.getElementById("tablaExterna");
			console.log(x);

			/*
			function GetCellValues() {
				var table = document.getElementById('tablaExterna');
				for (var r = 0, n = table.rows.length; r < n; r++) {
					for (var c = 0, m = table.rows[r].cells.length; c < m; c++) {
						alert(table.rows[r].cells[c].innerHTML);
						//var textboxVal = table.rows[r].cells[c].childNodes[0].value; 
					}
				}
			}

			var refTab = document.getElementById("ddReferences")
			var ttl;
			// Loop through all rows and columns of the table and popup alert with the value 
			// /content of each cell. 
			for (var i = 0; i < refTab.rows.length; i++) {
				var row = refTab.rows.item(i);
				for (var j = 0; j < row.cells.length; j++) {
					var col = row.cells.item(j);
					alert(col.firstChild.innerText);
				}
			}
*/
			/*
			contenido.innerHTML = ''
			contenido.innerHTML += `<tr>`
			for (var tk in datos) {
				var idtk = tk.toString();
				//console.log(idtk);
				contenido.innerHTML += `
				
				<td>
					<a href=" ">
						<p class="idtk" style="display: none;">$data</p>
						<p id="tanque">${datos[idtk].TANQUE}</p>
							
							<div class="contenedor"> 
							<img src="/static/recursos/imagenes/tanque.png">
								<div id="contenedor_barra">
									<div id="barra">0%</div>
								</div>
							</div>
					</a>
					<table id="tablaInterna">
						<tr>
							<br><br>
							<td>

								<label class="variable">TOV:</label>
								<p class="tov">${datos[idtk].TOV}</p>
							</td>
						</tr>
						<tr>
							<td>
								<label class="variable">NSV:</label>
								<p class="nsv">${datos[idtk].NSV}</p>
							</td>
						</tr>
						<tr>
							<td>
								<label class="variable">LT:</label>
								<p class="lt">${datos[idtk].LT}</p>
							</td>
						</tr>
					</table>
				</td>	
			`
			}
			*/
		};
	}

});