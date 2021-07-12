$(document).ready(function() {
	setInterval(function() {
		var tov =  (Math.random()*10).toFixed(4);
		var nsv =  (Math.random()*10).toFixed(4);
		var lt =  (Math.random()*10).toFixed(4);
		$(".tov").text(tov);
		$(".nsv").text(nsv);
		$(".lt").text(lt);
	}, 1000);
})