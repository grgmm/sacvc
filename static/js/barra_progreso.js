var porcentaje_subida;
const tiempo = 150; /*nro de ms */
var id = setInterval(mi_funcion, tiempo);
var subido = document.getElementById("barra"); //podria ponerse fuera de la funcion
var flag100=false;
var flag0=false;
function mi_funcion() {
	$.ajax({
		url: 'porcentaje_subida/', //url que llamara a la funcion que abre el json
		type: 'get',
		dataType: 'json', //indicamos que es de tipo json
		success: function (datos) {
			subido.style.backgroundColor="#117a8b"; //color de barra
			porcentaje_subida = datos["PORCENTAJE_SUBIDA"];

			//Metodo que detiene o arranca barra en 0
			if(porcentaje_subida==0){
				flag100=false
				subido.style.width = 100 + "%"; //barra
				subido.style.backgroundColor="White";
				subido.innerHTML = "No esta TCT en BD " + porcentaje_subida + "%";
				if(flag0==false){
					console.log("parando en cero");
					clearInterval(id);//detiene el script
				}else{
					console.log("arrancando de cero");
					id = setInterval(mi_funcion, tiempo);//arranca el script, llamado a la funcion
				}
			}

			
			if (porcentaje_subida > 0 && porcentaje_subida <=90) {
				console.log("incrementando");
				subido.style.width = porcentaje_subida + "%"; //barra
				subido.innerHTML = "Subiendo a BD " + porcentaje_subida + "%";
			}

			//Metodo que detiene la barra en 100
			if (porcentaje_subida == 100 && flag100==false) {
				console.log("LLego a 100");
				subido.style.width = porcentaje_subida + "%"; //barra
				subido.innerHTML = "TCT subido a BD " + porcentaje_subida + "%";   //texto
				flag0=false;
				flag100=true;
				clearInterval(id);//detiene el script
			}
		},
		error: function (response) {
			
		}
	});
}


function mi_funcion1() {
	console.log("click");
	id = setInterval(mi_funcion, tiempo);//arranca el script, llamado a la funcion
	subido = document.getElementById("barra"); //podria ponerse fuera de la funcion
	flag0=true;
	mi_funcion();
}
