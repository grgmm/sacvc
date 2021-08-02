function move() {
	//const nframes = 200; /*nro de frames por cada incrementoen la barra */
	var elem = document.getElementById("barra");

	var width=document.getElementById("porcentaje_subida").innerHTML;
	console.log("porcentaje "+width);
	elem.style.width = width + "%"; /*barra*/
	elem.innerHTML = width + "%";   /*texto*/

}setInterval(move, 1000);