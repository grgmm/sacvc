//https://www.w3schools.com/js/js_json_http.asp
$(document).ready(function () {
    setInterval(my_timer, 1000);

    function my_timer() {
        var tov = (Math.random() * 10).toFixed(4);
        var nsv = (Math.random() * 10).toFixed(4);
        var lt = (Math.random() * 10).toFixed(4);
        var data = '{"var1": 1.25, "var2": 2.50, "var3": 3.75}';
        var data_nested = '{"20": {"var1": 1, "var2": 3, "var3": 5},"22": {"var1": 7, "var2": 9, "var3": 11}}';
        data.var1 = 1.50;
        var obj = JSON.parse(data);
        var obj_nested = JSON.parse(data_nested);
        console.log(obj_nested);

        $(".tov").text(obj.var1); //json 
        $(".nsv").text(obj_nested["20"]["var1"]); //json anidado pone un solo valor
        $(".lt").text(lt);

        /* 
        https://www.tutorialrepublic.com/codelab.php?topic=javascript&file=parse-nested-json-data
        // Converting JSON object to JS object
        var obj = JSON.parse(json);

        // Printing all the values from the resulting object
        printValues(obj);

        // Define recursive function to print nested values
        function printValues(obj) {
            for (var k in obj) {
                if (obj[k] instanceof Object) {
                    printValues(obj[k]);
                } else {
                    document.write(obj[k] + "<br>");
                };
            }
        };
        */
    }

});