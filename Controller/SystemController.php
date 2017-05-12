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
    case "echoTodasPruebas": SystemController::echoTodasPruebas();
          break;
    case "echoAnormales": SystemController::echoAnormales();
          break;
    case "echoUltimaPruebaLab": SystemController::echoUltimaPruebaLab();
          break;
    case "echoCatalogoMedicamentos": SystemController::echoCatalogoMedicamentos();
          break;
    case "echoTodosDoctores": SystemController::echoTodosDoctores();
          break;
    case "echoMedicamentosPaciente": SystemController::echoMedicamentosPaciente();
          break;
    case "echoTodosPacientes": SystemController::echoTodosPacientes();
          break;
    case "echoAlergias": SystemController::echoAlergias();
          break;
    case "echoVisitas": SystemController::echoVisitas();
          break;
    case "echoVecesMedicamento": SystemController::echoVecesMedicamento();
          break;
}
//======================================================================================================================
class SystemController
{
    public static function echoTodasPruebas()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];
        $strPrueba = $_POST["strPrueba"];

        $result = EhrDB::arrstrTodasPruebas($strFname, $strLname, $strPrueba);

        if ($result == false)
        {
            echo "Error: echoUltimaPruebaLab()";
        }
        else
        {
            echo $result;
        }
    }

    public static function echoAnormales()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];
        $strPrueba = $_POST["strPrueba"];

        $result = EhrDB::arrstrAnormales($strFname, $strLname, $strPrueba);

        if ($result == false)
        {
            echo "Error: echoUltimaPruebaLab()";
        }
        else
        {
            echo $result;
        }
    }

    public static function echoUltimaPruebaLab()
    {
        $strFname = $_POST["strFname"];
        $strLname = $_POST["strLname"];
        $strPrueba = $_POST["strPrueba"];

        $result = EhrDB::arrstrUltimaPruebaLab($strFname, $strLname, $strPrueba);

        if ($result == false)
        {
            echo "Error: echoUltimaPruebaLab()";
        }
        else
        {
            echo $result;
        }
    }

    public static function echoCatalogoMedicamentos()
    {
        $strGeneric = $_POST["strGeneric"];

        $result = EhrDB::arrstrCatalogoMedicamentos($strGeneric);

        if ($result == false)
        {
            echo "Error: echoCatalogoMedicamentos()";
        }
        else
        {
            echo $result;
        }
    }
    
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
