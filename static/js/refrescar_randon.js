$(document).ready(function() {
	setInterval(function() {
		var tov =  (Math.random()*10).toFixed(4);
		var nsv =  (Math.random()*10).toFixed(4);
		var lt =  (Math.random()*10).toFixed(4);
		var data = '{ "var1": 1.25, "var2": 2.50, "var3": 3.75}';
		data.var1=1.50;
		var obj = JSON.parse(data);
		$(".tov").text(obj.var1);
		$(".nsv").text(nsv);
		$(".lt").text(lt);
	}, 1000);
})