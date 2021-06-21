
    function getcurrentdataAJAX() {

        //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX

        var refresca = $.ajax({

            url: 'actualizar/', //indicamos la ruta donde se genera
            dataType: 'json', //indicamos que es de tipo json
            type: 'get'

        }).done(function(data) {



               var tag = JSON.stringify(data,["TOV"]);
               var tanque = JSON.stringify(data,["IDTK"]);
               var instalacion = JSON.stringify(data,["NSV"]);
               var instalacion = JSON.stringify(data,["GSV"]);




              var table = document.getElementById("valores-actuales");
  {
  var row = table.insertRow(1);
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  var cell3 = row.insertCell(2);
  var cell4 = row.insertCell(2);



  cell1.innerHTML = data.TOV;
  cell2.innerHTML = data.IDTK;
  cell3.innerHTML = data.NSV;
  cell4.innerHTML = data.GSV;


  }

})

   }

    setInterval(getcurrentdataAJAX,1000);
