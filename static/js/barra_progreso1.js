var porcentaje_subida = 0;
const tiempo = 100; /*nro de ms entre refresh */
var id = setInterval(mi_funcion, tiempo);
function mi_funcion() {
	var refresca = $.ajax({
		url: 'barra_progreso/', //url que llamara a la funcion que abre el json
		dataType: 'json', //indicamos que es de tipo json
		type: 'get'
	}).done(function (datos) {
		console.log("estoy entrando");
		subido = document.getElementById("barra"); //podria ponerse fuera de la funcion
		porcentaje_subida = datos["PORCENTAJE_SUBIDA"];
		if (porcentaje_subida == 100) {
			subido.style.width = porcentaje_subida + "%"; /*barra*/
			subido.innerHTML = "Proceso Terminado " + porcentaje_subida + "%";   /*texto*/
			clearInterval(id);//detiene el script

		} else {
			subido.style.width = porcentaje_subida + "%"; /*barra*/
			if (porcentaje_subida == 0) {
				id = setInterval(mi_funcion, tiempo);//arranca el script, llamado a la funcion
				subido.innerHTML = " ";
			}
			if (porcentaje_subida > 0) {
				subido.innerHTML = porcentaje_subida + "%";   /*texto*/
			}
			if (porcentaje_subida > 90) {
				subido.innerHTML = "Finalizando " + porcentaje_subida + "%";
			}
		}
	})
}
