//======================================================================================================================
$(document).ready(function()
{
    //==================================================================================================================
    function subLoadReport()
    {
        var jsonData =
        {
            "strFname": $("#inNombre").val(),
            "strLname": $("#inApellido").val(),
            "action": "echoTodosPacientes"
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
                    $("#tbleTodosPacientes").append(
                        "<tr id=\"" + dataArray[x][0] + "\"><td>" + dataArray[x][0] +
                        "</td><td>" + dataArray[x][1] +
                        "</td><td>" + dataArray[x][2] +
                        "</td><td>" + dataArray[x][3] +
                        "</td><td>" + dataArray[x][4] +
                        "</td><td>" + dataArray[x][5] +
                        "</td><td>" + dataArray[x][6] +
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
            }});

        var jsonData =
        {
            "strFname": $("#inNombre").val(),
            "strLname": $("#inApellido").val(),
            "action": "echoAlergias"
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
                    $("#tbleAlergias").append(
                        "<tr><td>" + dataArray[x][2] +
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
            }});

            var jsonData =
        {
            "strFname": $("#inNombre").val(),
            "strLname": $("#inApellido").val(),
            "action": "echoMedicamentosPaciente"
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
                    $("#tbleMedicamentosPaciente").append(
                        "<tr><td>" + dataArray[x][2] +
                        "</td><td>" + dataArray[x][3] +
                        "</td><td>" + dataArray[x][4] +
                        "</td><td>" + dataArray[x][5] +
                        "</td><td>" + dataArray[x][6] +
                        "</td><td>" + dataArray[x][7] +
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
            }});
            var jsonData =
        {
          "strFname": $("#inNombre").val(),
          "strLname": $("#inApellido").val(),
          "action": "echoVisitas"
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
                    $("#tbleVisitas").append(
                        "<tr><td>" + dataArray[x][2] +
                        "</td><td>" + dataArray[x][3] +
                        "</td><td>" + dataArray[x][4] +
                        "</td><td>" + dataArray[x][5] +
                        "</td><td>" + dataArray[x][6] +
                        "</td><td>" + dataArray[x][7] +
                        "</td><td>" + dataArray[x][8] +
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
            }});

             var jsonData =
        {
            "strFname": $("#inNombre").val(),
            "strLname": $("#inApellido").val(),
            "strPrueba": "",
            "action": "echoTodasPruebas"
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
                    $("#tbleTodasPruebas").append(
                        "<tr><td>" + dataArray[x][2] +
                        "</td><td>" + dataArray[x][3] +
                        "</td><td>" + dataArray[x][4] +
                        "</td><td>" + dataArray[x][5] +
                        "</td><td>" + dataArray[x][6] +
                        "</td><td>" + dataArray[x][7] +
                        "</td><td>" + dataArray[x][8] +
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
            }});
    }

    //------------------------------------------------------------------------------------------------------------------
    $("#btnRecalcularReporte").on("click", function() {
        $("#tbleAlergias > tr").remove();
        $("#tbleMedicamentosPaciente > tr").remove();
        $("#tbleVisitas > tr").remove();
        $("#tbleTodosPacientes > tr").remove();
        $("#tbleTodasPruebas > tr").remove();

        subLoadReport();
    });

    //==================================================================================================================
});

//======================================================================================================================
