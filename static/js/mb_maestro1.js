//obtengo las propiedades del select
var e_tipo = document.getElementById("id_Tipo");            //select
var e_puerto = document.getElementById("id_Puerto");          //select
var e_ipdevice = document.getElementById("id_IpDevice");        //input
var e_serviceport = document.getElementById("id_SercvicePort");    //input
var e_velocidad = document.getElementById("id_Velocidad");       //select
var e_paridad = document.getElementById("id_Paridad");         //select
var e_reintentos = document.getElementById("id_Reintentos");      //input
var e_iddevice = document.getElementById("id_IdDevice"); 
function show() {
    //obtengo el string contenido en la opcion seleccionada
    var text_id_tipo = e_tipo.options[e_tipo.selectedIndex].text;
    //console.log(text_id_tipo);
    if (text_id_tipo === "MBRTU") {

        //Estoy en protocolo serial
        //Procedo a retirar TCP_SRV de las opciones
        //lo selecciono
        e_puerto.value = 'TCP_SRV';
        //lo retiro
        e_puerto.options[e_puerto.selectedIndex].style.display = "none";

        //habilito las opciones seriales
        e_puerto.value = 'serial1';
        e_puerto.options[e_puerto.selectedIndex].style.display = "inline";

        e_puerto.value = 'serial2';
        e_puerto.options[e_puerto.selectedIndex].style.display = "inline";

        e_puerto.value = 'serial3';
        e_puerto.options[e_puerto.selectedIndex].style.display = "inline";

        e_puerto.value = 'serial4';
        e_puerto.options[e_puerto.selectedIndex].style.display = "inline";

        //me posiciono en serial1
        e_puerto.value = "serial1"

        //Habilito visibilidad a select paridad y velocidad
        e_paridad.style.display = 'inline';
        e_velocidad.style.display = 'inline';

        //parametros no usados ocultos
        //e_ipdevice.value = "000 000 000 000";
        //e_ipdevice.style.color = "white"; //temporal
        e_ipdevice.style.visibility = "hidden"; 
        //e_serviceport.value = "0000";
        //e_serviceport.style.color = "white"; //temporal
        e_serviceport.style.visibility = "hidden"; 

        //Deshabilito los input y habilito el id="id_Reintentos"
        //$('input').prop('disabled', true);
        e_reintentos.disabled = false;
        //habilito el input con id=id_IdDevice
        e_iddevice.disabled = false;

    } else {
        //Estoy en modo TCP
        //habilito input
        $('input').prop('disabled', false);
        //parametros TCP visibles
        //e_ipdevice.style.color = "black";
        e_ipdevice.style.visibility = "visible"; 
        //e_serviceport.style.color = "black";
        e_serviceport.style.visibility = "visible"; 

        //Retiro las opciones seriales
        e_puerto.value = 'serial1';
        e_puerto.options[e_puerto.selectedIndex].style.display = "none";
        //e_puerto.value = "TCP_SRV"

        e_puerto.value = 'serial2';
        e_puerto.options[e_puerto.selectedIndex].style.display = "none";
        //e_puerto.value = "TCP_SRV"

        e_puerto.value = 'serial3';
        e_puerto.options[e_puerto.selectedIndex].style.display = "none";
        //e_puerto.value = "TCP_SRV"

        e_puerto.value = 'serial4';
        e_puerto.options[e_puerto.selectedIndex].style.display = "none";
        e_puerto.value = "TCP_SRV"

        //Selecciono TCP_SVR y pongo visivilidad de opccion tcp
        e_puerto.value = 'TCP_SRV';
        e_puerto.options[e_puerto.selectedIndex].style.display = "inline";

        //Retiro visibilidad a select paridad y velocidad
        e_velocidad.style.display = 'none';
        e_paridad.style.display = 'inline';
        
    }
    //Habilito el boton de seleccion de archivo del dialog
    document.getElementById("id_Configuracion").disabled = false;
}
e_tipo.onchange = show;
show();