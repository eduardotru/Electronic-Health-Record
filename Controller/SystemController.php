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
    public static function echoProjectByEmployeeCant()
    {
        $intMinEmployee_I = $_POST["intMinEmployee"];
        $intMaxEmployee_I = $_POST["intMaxEmployee"];

        $result = EhrDB::arrstrProjectByEmployeeCant($intMinEmployee_I, $intMaxEmployee_I);

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
