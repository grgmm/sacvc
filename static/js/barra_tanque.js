var i = 0;
function move() {
	if (i == 0) {
		i = 1;
		const nframes = 50; /*nro de frames por cada incrementoen la barra */
		var elem = document.getElementById("barra");
		var width = 10;  /*Punto de arranque de la barra*/
		var id = setInterval(frame, nframes); /*Un imcremento cada nframes*/
		function frame() {
			if (width >= 100) {
				clearInterval(id);
				i = 0;
			} else {
				width++;
				var texto = width + "%";
				elem.innerHTML = texto;  /*texto*/
				elem.style.width = width + "%"; /*barra*/
			}
		}
	}

}