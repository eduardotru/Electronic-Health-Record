//======================================================================================================================
$(document).ready(function()
{
    //==================================================================================================================
    //														                          //Prepara las configuraciones inicales para la pagina
    //														                          //		cargada. Inicialmente se debe cargar todos los
    //                                                      //      empleados registrados a la tabla.

    subLoadReport();

    //==================================================================================================================
    function subLoadReport()
    {
        var jsonData =
        {
             "strFname": $("#inNombre").val(),
            "strLname": $("#inApellido").val(),
            "strPrueba": $("#inPrueba").val(),
            "action": "echoAnormales"
        };

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        $.ajax({
            url: "Controller/SystemController.php",
            type: "POST",
            data: jsonData,

            // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            success: function(jsonResponse)
            {
                //console.log(jsonResponse);
                //                                              //Pasa la informacion a un arreglo entendibel por js y
                //                                              //      adjunta a la tabla.
                var dataArray = jQuery.parseJSON(jsonResponse);
                var nombre = "";
                var apellido = "";
                var prueba = "";
                var fecha = "";
                for (var x = 0; x < dataArray.length; x++) 
                {
                    if(nombre != dataArray[x][1] || apellido != dataArray[x][2] || prueba != dataArray[x][3] || fecha != dataArray[x][4])
                    {
                        nombre = dataArray[x][1]; 
                        apellido = dataArray[x][2]; 
                        prueba = dataArray[x][3];
                        fecha = dataArray[x][4];
                        $("#tbleAnormales").append(
                            "<tr><td>" + dataArray[x][1] +
                            "</td><td>" + dataArray[x][2] +
                            "</td><td>" + dataArray[x][3] +
                            "</td><td>" + dataArray[x][4] +
                            "</td><td>" + dataArray[x][6] +
                            "</td><td>" + dataArray[x][7] +
                            "</td><td>" + dataArray[x][8] +
                            "</td><td>" + dataArray[x][9] +
                            "</td><td>" + dataArray[x][10] +
                            "</td>");
                    }
                    else
                    {
                        $("#tbleAnormales").append(
                            "<tr><td>" + " " +
                            "</td><td>" + " " +
                            "</td><td>" + " " +
                            "</td><td>" + " " +
                            "</td><td>" + dataArray[x][6] +
                            "</td><td>" + dataArray[x][7] +
                            "</td><td>" + dataArray[x][8] +
                            "</td><td>" + dataArray[x][9] +
                            "</td><td>" + dataArray[x][10] +
                            "</td>");   
                    }
                }

                if (dataArray.length == 0)
                {
                    document.getElementById("divSign").innerHTML =
                        "<span class=\"glyphicon glyphicon-info-sign\"></span> <b>No hay resultados para tu consutla</b>";
                }
                else
                {
                    document.getElementById("divSign").innerHTML = "";
                }
            }

            // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        });
    }

    //------------------------------------------------------------------------------------------------------------------
    $("#btnRecalcularReporte").on("click", function() {
        $("#tbleAnormales > tr").remove();
        subLoadReport();
    });

    //==================================================================================================================
});

//======================================================================================================================
