<?php
include "../Model/CompanyDB.php";
//======================================================================================================================
//                                                          //Variables globales obtenidas del formulario para login
$action = $_POST["action"];

//======================================================================================================================
//                                                          //Selecciona el metodo a ejecutar, se coloca solo por
//                                                          //    estandar
switch ($action)
{
    case "echoProjectByEmployeeCant": SystemController::echoProjectByEmployeeCant();
          break;
    case "echoGetAllLocations": SystemController::echoGetAllLocations();
          break;
    case "echoDepartmentByLocation": SystemController::echoDepartmentByLocation();
          break;
    case "echoEmployeesBySalary": SystemController::echoEmployeesBySalary();
          break;
}
//======================================================================================================================
class SystemController
{
    public static function echoEmployeesBySalary()
    {
        $intSalary_I = $_POST["intSalary"];

        $result = CompanyDB::arrstrGetEmployeesBySalary($intSalary_I);

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

        $result = CompanyDB::arrstrGetDepartmentsByLocation($strDepartment_I);

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
        $result = CompanyDB::arrstrGetAllLocations();

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
    public static function echoProjectByEmployeeCant()
    {
        $intMinEmployee_I = $_POST["intMinEmployee"];
        $intMaxEmployee_I = $_POST["intMaxEmployee"];

        $result = CompanyDB::arrstrProjectByEmployeeCant($intMinEmployee_I, $intMaxEmployee_I);

        if ($result == false)
        {
            echo "Error: echoProjectByEmployeeCant()";
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
