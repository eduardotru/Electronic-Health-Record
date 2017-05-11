//======================================================================================================================
$(document).ready(function()
{
    //==================================================================================================================
    //														                          //Prepara las configuraciones inicales para la pagina
    //														                          //		cargada. Inicialmente se debe cargar todos los
    //                                                      //      empleados registrados a la tabla.

    subLoadReport();
    subLoadSelectBox();

    //==================================================================================================================
    function subLoadReport()
    {
        var jsonData =
        {
            "strDepartment": $("#inLocation :selected").val(),
            "action": "echoDepartmentByLocation"
        };

        // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        $.ajax({
            url: "Controller/SystemController.php",
            type: "POST",
            data: jsonData,

            // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            success: function(jsonResponse)
            {
                console.log(jsonResponse);
                //                                              //Pasa la informacion a un arreglo entendibel por js y
                //                                              //      adjunta a la tabla.
                var dataArray = jQuery.parseJSON(jsonResponse);
                for (var x = 0; x < dataArray.length; x++) {
                    $("#tbleDepartamentosPorLocacion").append(
                        "<tr id=\"" + dataArray[x][0] + "\"><td>" + dataArray[x][0] +
                        "</td><td>" + dataArray[x][1] +
                        "</td><td>" + dataArray[x][2] +
                        "</td>");
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
        $("#tbleDepartamentosPorLocacion > tr").remove();
        subLoadReport();
    });

    //==================================================================================================================
    function subLoadSelectBox()
    {
        var jsonData =
        {
            "action": "echoGetAllLocations"
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
                for (var x = 0; x < dataArray.length; x++) {
                    $("#inLocation").append(
                        "<option value=\""+ dataArray[x][0] +"\">" + dataArray[x][0] +"</option>"
                        );
                }
            }

            // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        });
    }

});

//======================================================================================================================
