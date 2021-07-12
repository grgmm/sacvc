$(document).ready(function() {
	setInterval(function() {
		var elem = document.getElementById("barra");
		var width =  (Math.random()*100).toFixed();
		var texto = width + "%";
		elem.innerHTML = texto;  /*texto*/
		elem.style.width = width + "%"; /*barra*/
	}, 1000);
})