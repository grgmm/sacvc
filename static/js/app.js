/*
RUTA:

urls.py
//define el nombre de la vista el la url del proyecto
 url(r'^data_actual/$', current_data.as_view(), name='current_data'),

 views.py
 //ldespliega la pagina y define la pagina de retorno
 //y la tabla de la BD con la cual se vincula
 class current_data(ListView):
  model = Tk
  success_url = reverse_lazy('uacq:list_tf')
  template_name = 'acq/current_data/current_data.html'

  
url: 'actualizar/'
llama al url siguiente:
url('actualizar/',views.actualizar, name='actualizar'), #CONVIERTE EL JSON DEL PV EN UNA URL


views.py
//abre el archivo en modo lectura.
def actualizar(request):
    fs = FileSystemStorage(location=settings.MEDIA_ROOT+'/Data')
    ruta_Data=fs.location
    try:
          with fs.open(ruta_Data+'/Buffer_Datos_Calculados.json', mode= 'r') as data_file:
               dataf = json.loads(data_file.read())

    except:
              print("Error inesperado:", sys.exc_info()[0])
    return JsonResponse(dataf)


*/


function getcurrentdataAJAX() {

    //GUARDAMOS EN UNA VARIABLE EL RESULTADO DE LA CONSULTA AJAX

    var refresca = $.ajax({

        url: 'actualizar/', //url que llamara a la vista que abre el json
        dataType: 'json', //indicamos que es de tipo json
        type: 'get'

    }).done(function (data) {
        //data contiene el retorno JSON de la funcion actualizar
        var table = document.getElementById("valores-actuales");
        //var rows = table.rows.length; //si deseo contar filas,incluye el  encabezado
        var cols = table.rows[0].cells.length; //Columnas del encabezado

        //NOTA: el encavezado es la fila 0 (r=0)
        var r = 0; //cuenta los tanques, cada tanque una fila
        for (var tk in data) { //recorre filas (o tanques) (for (var r = 1, n = rows; r < n; r++) {})
            r++; //empieza en la fila 1
            var idtk = tk.toString(); //tomo el id del tanque, uno por fila
            for (var c = 0, m = table.rows[r].cells.length; c < m; c++) {
                //recorre las celdas de cada fila
                switch (c) {
                    //pongo la data en la fila
                    case 0:
                        //genero id dinamico
                        generar_id("id");
                        break;
                    case 1:
                        //genero id dinamico
                        generar_id("tanque");
                        break;
                    case 2:
                        generar_id("tov");
                        break;
                    case 3:
                        //genero id dinamico
                        generar_id("nsv");
                        break;
                    case 4:
                        //genero id dinamico
                        generar_id("lt");
                        break;
                }
            }
            //Esta funcion genera selectores id dinamicos
            //el selector id(minusculas) tiene el mismo nombre
            //de la variable de JSON (mayusculas)
            function generar_id(id) {
                var id_nuevo = id + r.toString();
                $("#" + id).attr("id", id_nuevo);
                if (id == "id") {
                    $("#" + id_nuevo).text(idtk);
                } else {
                    $("#" + id_nuevo).text(data[idtk][id.toUpperCase()]);
                }
            }
        }
    })
}
setInterval(getcurrentdataAJAX, 1000);


/*
//alert(table.rows[r].cells[c].innerHTML);
//var textboxVal = table.rows[r].cells[c].childNodes[0].value;
var row = table.insertRow();
var cell1 = row.insertCell(0);
var cell2 = row.insertCell(1);
var cell3 = row.insertCell(2);
var cell4 = row.insertCell(3);
var cell5 = row.insertCell(4);

cell1.innerHTML = data["20"].TANQUE;
cell2.innerHTML = data["20"].TANQUE;
cell3.innerHTML = data["20"].TOV;
cell4.innerHTML = data["20"].NSV;
cell5.innerHTML = data["20"].LT;
*/
//quitar y poner atributos
//$("#player").removeAttr("id");
//$("#player2").attr("id","player");
/*

switch (c) {
    //pongo la data en la fila
    case 0:
        celda.innerHTML = idtk;
        break;
    case 1:
        celda.innerHTML = data[idtk].TANQUE;
        //var nombre = JSON.stringify(data, ["TANQUE"]);
        break;
    case 2:
        celda.innerHTML = data[idtk].TOV; //pone la variable TOV en la celda

        //pone en id="tov" el contenido de TOV
        $("#"+indice).text(data[idtk]["TOV"]);
        //console.log(data[idtk]["TOV"]);
        //console.log(data[idtk].TOV);
        break;
    case 3:
        celda.innerHTML = data[idtk].NSV;
        break;
    case 4:
        celda.innerHTML = data[idtk].LT;
        break;
}
*/
