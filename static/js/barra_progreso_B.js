var porcentaje_subida = 0;
const tiempo = 150; /*nro de ms */
var id = setInterval(mi_funcion, tiempo);
var subido = document.getElementById("barra"); //podria ponerse fuera de la funcion
var flag100=false;
function mi_funcion() {
	//console.log("Entrada a mi_funcion");
	$.ajax({
		url: 'porcentaje_subida/', //url que llamara a la funcion que abre el json
		type: 'get',
		dataType: 'json', //indicamos que es de tipo json
		success: function (datos) {
			porcentaje_subida = datos["PORCENTAJE_SUBIDA"];
            console.log("% inicial= "+porcentaje_subida);
			subido.style.width = porcentaje_subida + "%"; //barra
			subido.innerHTML = porcentaje_subida + "%";
			//console.log("1"+flag100);
			//console.log("1");
			if(porcentaje_subida==100 && flag100===true){
				//console.log("2");
				porcentaje_subida=0;
				//subido.innerHTML = porcentaje_subida + "%";
				id = setInterval(mi_funcion, tiempo);//arranca el script, llamado a la funcion
				flag100=false;
				//console.log("2"+flag100);
			}
			if (porcentaje_subida > 90 && porcentaje_subida < 100) {
				//console.log("3");
				subido.style.width = porcentaje_subida + "%"; //barra
				subido.innerHTML = "Finalizando " + porcentaje_subida + "%";
			}
			if (porcentaje_subida == 100 && flag100===false) {
				//console.log("4");
				subido.innerHTML = "Proceso Terminado " + porcentaje_subida + "%";   //texto
				flag100=true;
				//console.log("3"+flag100);
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