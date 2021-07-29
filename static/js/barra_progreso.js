function move() {
	const nframes = 200; /*nro de frames por cada incrementoen la barra */
	var elem = document.getElementById("barra");
	var width = 0;  /*Punto de arranque de la barra*/
	var id = setInterval(frame, nframes); /*Un imcremento cada nframes*/
	function frame() {
		if (width >= 100) {
			clearInterval(id);
			i = 0;
		} else {
			width++;
			elem.style.width = width + "%"; /*barra*/
			elem.innerHTML = width + "%";   /*texto*/
		}
	}

}