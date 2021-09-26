

var flag_all = 0
var flag_none = 0

var rbotones = document.getElementsByClassName('r_boton');
var len = rbotones.length;
var acq, cpt, hs, ges_hs, none, all
/*
if (flag_all == 0 && flag_none == 0) {
    //Condicion de inicio del script
    for (var i = 0; i < len; i++) {
        //botones de modulos seleccionados
        rbotones[i].checked = true
        console.log(rbotones[i].id)
        switch (i) {
            case 0:
                acq = i
               console.log( rbotones[i].id)
            case 1:
                cpt = i
               console.log( rbotones[i].id)
            case 2:
                hs = i
               console.log( rbotones[i].id)
            case 3:
                ges_hs = i
               console.log( rbotones[i].id)
            case 4:
                all = i
               console.log( rbotones[i].id)
            case 5:
                none = i
               console.log( rbotones[i].id)
        }
        rbotones[5].checked = false //none desseleccionado
        flag_none = 0
        flag_all = 1
    }
}
*/
function myFunction(clicked_id) {
    var rbotones = document.getElementsByClassName('r_boton');
    var len = rbotones.length;
    const acq = 0
    const cpt = 1
    const hs = 2
    const ges_hs = 3
    const all = 4
    const none = 5;

    //NOTA:Se debe conservar el orden de los if

    if (!rbotones[acq].checked && !rbotones[cpt].checked && !rbotones[hs].checked && !rbotones[ges_hs].checked && flag_none == 0) {
        //ninguno seleccionado
        console.log('Ninguno seleccionado')
        rbotones[none].checked = 1
        rbotones[all].checked = 0
        flag_none = 1
        flag_all = 0
        //rbotones[all].setAttribute("disabled", "true");
        //rbotones[none].setAttribute("disabled", "false");
    }


    if (rbotones[acq].checked && rbotones[cpt].checked && rbotones[hs].checked && rbotones[ges_hs].checked && flag_all == 0) {
        //todos seleccionados
        console.log('Todos seleccionado')
        rbotones[all].checked = 1
        rbotones[none].checked = 0
        flag_all = 1
        flag_none = 0
        //rbotones[none].setAttribute("disabled", "false");
        //rbotones[all].setAttribute("disabled", "true");
    }

    if (rbotones[all].checked && flag_all == 0) {
        //seleciono todos
        console.log('Cilck en all')
        for (var i = 0; i < len; i++) {
            rbotones[i].checked = 1
            //rbotones[none].setAttribute("disabled", "false");
            //rbotones[all].setAttribute("disabled", "true");
            //console.log(rbotones[i].id)
        }
        flag_all = 1
        flag_none = 0
        rbotones[none].checked = 0
        //todos seleccionados
    }

    if (rbotones[none].checked && flag_none == 0) {
        //desselecciono todos
        console.log("Cilck en none")
        for (var i = 0; i < len; i++) {
            rbotones[i].checked = 0
            //rbotones[all].setAttribute("disabled", "true");
            //rbotones[none].setAttribute("disabled", "false");
            //console.log(rbotones[i].id)
        }
        flag_none = 1
        flag_all = 0
        rbotones[all].checked = 0
        rbotones[none].checked = 1
    }


    if ((rbotones[acq].checked || rbotones[cpt].checked || rbotones[hs].checked || rbotones[ges_hs].checked) && (!rbotones[acq].checked || !rbotones[cpt].checked || !rbotones[hs].checked || !rbotones[ges_hs].checked)) {
        //almenos uno seleccionado y al menos uno no seleccionadp
        console.log('Al menos uno seleccionado y al menos uno no seleccionadp')
        rbotones[none].checked = 0
        rbotones[all].checked = 0
        flag_all = 0
        flag_none = 0
    }


}