<?php
include "../Model/EhrDB.php";
//======================================================================================================================
//                                                          //Variables globales obtenidas del formulario para login
$action = $_POST["action"];

//======================================================================================================================
//                                                          //Selecciona el metodo a ejecutar, se coloca solo por
//                                                          //    estandar
switch ($action)
{
    case "echoTodosDoctores": SystemController::echoTodosDoctores();
          break;
    case "echoMedicamentosPaciente": SystemController::echoMedicamentosPaciente();
          break;
    case "echoTodosPacientes": SystemController::echoTodosPacientes();
          break;
    case "echoAlergias": SystemController::echoAlergias();
          break;
    case "echoGetAllLocations": SystemController::echoGetAllLocations();
          break;
    case "echoDepartmentByLocation": SystemController::echoDepartmentByLocation();
          break;
    case "echoEmployeesBySalary": SystemController::echoEmployeesBySalary();
          break;
    case "echoVisitas": SystemController::echoVisitas();
          break;
    case "echoVecesMedicamento": SystemController::echoVecesMedicamento();
          break;
}
//======================================================================================================================
class SystemController
{
    public static function echoEmployeesBySalary()
    {
        $intSalary_I = $_POST["intSalary"];

        $result = EhrDB::arrstrGetEmployeesBySalary($intSalary_I);

        if ($result == false)
        {
            echo "Error: echoEmployeesBySalary()";
        }
        else
        {
            echo $result;
        }
    }

    //------------------------------------------------------------------------------------------------------------------
    public static function echoDepartmentByLocation()
    {
        $strDepartment_I = $_POST["strDepartment"];

        $result = EhrDB::arrstrGetDepartmentsByLocation($strDepartment_I);

        if ($result == false)
        {
            echo "Error: echoDepartmentByLocation()";
        }
        else
        {
            echo $result;
        }
    }

    //------------------------------------------------------------------------------------------------------------------
    public static function echoGetAllLocations()
    {
        $result = EhrDB::arrstrGetAllLocations();

        if ($result == false)
        {
            echo "Error: echoGetAllLocations()";
        }
        else
        {
            echo $result;
        }
    }

    //------------------------------------------------------------------------------------------------------------------
    public static function echoAlergias()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];

        $result = EhrDB::arrstrAlergias($strFname, $strLname);

        if ($result == false)
        {
            echo "Error: echoAlergias()";
        }
        else
        {
            echo $result;
        }
    }

    public static function echoTodosPacientes()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];

        $result = EhrDB::arrstrTodosPacientes($strFname, $strLname);

        if ($result == false)
        {
            echo "Error: echoTodosPacientes()";
        }
        else
        {
            echo $result;
        }
    }

    public static function echoMedicamentosPaciente()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];

        $result = EhrDB::arrstrMedicamentosPaciente($strFname, $strLname);

        if ($result == false)
        {
            echo "Error: echoMedicamentosPaciente()";
        }
        else
        {
            echo $result;
        }
    }

    public static function echoVisitas()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];

        $result = EhrDB::arrstrVisitas($strFname, $strLname);

        if ($result == false)
        {
            echo "Error: echoVisitas()";
        }
        else
        {
            echo $result;
        }
    }
    public static function echoTodosDoctores()
    {
        $strName = $_POST["strName"];
        $strEspecialidad = $_POST["strEspecialidad"];

        $result = EhrDB::arrstrTodosDoctores($strName, $strEspecialidad);

        if ($result == false)
        {
            echo "Error: echoTodosDoctores()";
        }
        else
        {
            echo $result;
        }
    }

    public static function echoVecesMedicamento()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];

        $result = EhrDB::arrstrVecesMedicamento($strFname, $strLname);

        if ($result == false)
        {
            echo "Error: echoVecesMedicamento()";
        }
        else
        {
            echo $result;
        }
    }

    //------------------------------------------------------------------------------------------------------------------
}

//======================================================================================================================
?>
