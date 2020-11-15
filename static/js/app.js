
    function getcurrentdataAJAX() {

        //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX

        var refresca = $.ajax({

            url: 'actualizar/', //indicamos la ruta donde se genera
            dataType: 'json', //indicamos que es de tipo json
            type: 'get'

        }).done(function(data) {



               var tag = JSON.stringify(data,["TAG"]);
               var tanque = JSON.stringify(data,["TANQUE"]);
               var instalacion = JSON.stringify(data,["INSTALACION"]);
               var Pv0 = JSON.stringify(data,["PV0"]);
               var Pv1 = JSON.stringify(data,["PV1"]);
               var Pv_float = JSON.stringify(data,["PV_FLOAT"]);
               var Unidad = JSON.stringify(data,["UNIDAD"]);
               var Direccion = JSON.stringify(data,["DIRECCION"]);
               var Timestamp = JSON.stringify(data,["TIMESTAMP"]);


              var table = document.getElementById("valores-actuales");
  {
  var row = table.insertRow(1);
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  var cell3 = row.insertCell(2);
  var cell4 = row.insertCell(3);
  var cell5 = row.insertCell(4);
  var cell6 = row.insertCell(5);
  var cell7 = row.insertCell(6);
  var cell8 = row.insertCell(7);
  var cell9 = row.insertCell(8);

  var Pv_floatFormatted=data.PV_FLOAT.toFixed(2); //"12.13 CANTIDAD DE DECIMALES SEGUN LA NORMA PARA BARRILES DOS (2)

  cell1.innerHTML = data.TAG;
  cell2.innerHTML = data.TANQUE;
  cell3.innerHTML = data.INSTALACION;
  cell4.innerHTML = data.PV0;
  cell5.innerHTML = data.PV1;
  cell6.innerHTML = Pv_floatFormatted;
  cell7.innerHTML = data.UNIDAD;
  cell8.innerHTML = data.DIRECCION;
  cell9.innerHTML = data.TIMESTAMP;

  }

})

   }

    setInterval(getcurrentdataAJAX,1000);
