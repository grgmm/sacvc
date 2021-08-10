var porcentaje_subida = 0;
const tiempo = 150; /*nro de ms */
var subido = document.getElementById("barra"); //podria ponerse fuera de la funcion
var flag100 = false;
var id;
function mi_funcion() { id = setInterval(mi_funcion2, tiempo); }
function mi_funcion2() {
	//console.log("Entrada a mi_funcion");
	$.ajax({
		url: 'porcentaje_subida/', //url que llamara a la funcion que abre el json
         type: 'get',
		dataType: 'json', //indicamos que es de tipo json
		success: function (datos) {
			porcentaje_subida = datos["PORCENTAJE_SUBIDA"];
			subido.style.width = porcentaje_subida + "%"; //barra
			subido.innerHTML = porcentaje_subida + "%";
			//console.log(flag100, 'primero')
			if (porcentaje_subida == 100 && flag100 == true) {
				porcentaje_subida = 0;
				subido.innerHTML = porcentaje_subida + "%";
				//id = setInterval(mi_funcion, tiempo);//arranca el script, llamado a la funcion
				flag100 = false;
				console.log(flag100, 'segundo')

			}
			if (porcentaje_subida > 90 && porcentaje_subida < 100) {
				subido.style.width = porcentaje_subida + "%"; //barra
				subido.innerHTML = "Finalizando " + porcentaje_subida +"%";
			}
			if (porcentaje_subida == 100 && flag100 == false) {
				subido.innerHTML = "Proceso Terminado " +
					porcentaje_subida + "%";   //texto
				flag100 = true;
				console.log(flag100, 'tercero')
				clearInterval(id);//detiene el script
			}
		},
		error: function (response) {
			//console.log("Estoy en error"),
			console.log(response);
		}

	});

}


/*
$(document).ready(function(){
	 mi_funcion();
	 console.log("Entrada a document.ready");
});*/
