//======================================================================================================================
$(document).ready(function() {
    //==================================================================================================================
    //														//Prepara las configuraciones inicales para la pagina
    //														//		cargada. En este caso muestra la linea de seleccion
    //														//		en el	buton de empleados del menu central	y carga
    //														//		la pagina dentro del div. Se selecciono por default
    //														//		la pagina de empleados.

    //                                                      //Imprime fecha actual
    var strFecha = getFecha();
    document.getElementById("lblFecha").innerHTML = strFecha;

    var strPageToLoad = getUrlParameter("show");

    if (strPageToLoad == "report") {
        var strId = getUrlParameter("rid");

        switch (strId)
        {
            case "P1":
                $("#divReport").load("View/Pacientes/TodosPacientes.html");
                break;
            case "P2":
                $("#divReport").load("View/Pacientes/Visitas.html");
                break;
            case "P3":
                $("#divReport").load("View/Pacientes/MedicamentosPaciente.html");
                break;
            case "P4":
                $("#divReport").load("View/Pacientes/VecesMedicamento.html");
                break;
            case "P5":
                $("#divReport").load("View/Pacientes/Alergias.html");
                break;
            case "P6":
                $("#divReport").load("View/Pacientes/UltimaPruebaLab.html");
                break;
            case "D1":
                 $("#divReport").load("View/Doctores/TodosDoctores.html");
                break;
            default:
                $("#alrSelectReport").toggle("slow");
                break;
        }
    }
    else
    {
        $("#alrSelectReport").toggle("slow");
    }

    //==================================================================================================================
    function getUrlParameter(sParam) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
            sURLVariables = sPageURL.split('&'),
            sParameterName,
            i;

        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');
            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }

        return "null";
    }

    //==================================================================================================================
    function getFecha() {
        var month = new Array();
        month[0] = "enero";
        month[1] = "febrero";
        month[2] = "marzo";
        month[3] = "abril";
        month[4] = "mayo";
        month[5] = "junio";
        month[6] = "julio";
        month[7] = "agosto";
        month[8] = "septiembre";
        month[9] = "octubre";
        month[10] = "noviembre";
        month[11] = "diciembre";

        var hoy = new Date();
        var dd = hoy.getDate();
        var mm = hoy.getMonth(); //hoy es 0!
        var yyyy = hoy.getFullYear();

        return  dd + ' de '+ month[mm] + " de "+ yyyy;
    }
});

//======================================================================================================================
