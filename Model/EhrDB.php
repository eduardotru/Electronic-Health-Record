<?php
//======================================================================================================================
//                                                          //Informacion y metodos basica de la base de datos
class EhrDB
{
    public static $DB_SERVER = 'localhost';
    public static $DB_USERNAME = 'root';
    public static $DB_PASSWORD = '';
    public static $DB_DATABASE = 'ehr';

    //==================================================================================================================
    private static function subCreateConnection()
    {
      //                                                    //Se crea la conexion a la base de datos
      $mysqli = new mysqli(
         EhrDB::$DB_SERVER,EhrDB::$DB_USERNAME,EhrDB::$DB_PASSWORD,EhrDB::$DB_DATABASE);

      //                                                    //Verificacion de la connexion
      if (mysqli_connect_errno()) {
          printf("Error en la conexion: %s\n", mysqli_connect_error());
          return false;
      }

      return $mysqli;
    }

    //==================================================================================================================
    public static function arrstrGetEmployeesBySalary($intSalary)
    {
      $outArray = false;
      $mysqli = EhrDB::subCreateConnection();

      $query = "SELECT * FROM PATIENT WHERE id >= ?";

      if ($stmt = $mysqli->prepare($query))
      {
          $stmt->bind_param("d", $intSalary);
          $stmt->execute();
          $result = $stmt->get_result();

          $outArray = array();
          while ($row = mysqli_fetch_row($result)) {
              $outArray[] = $row;
          }
          $stmt->close();
      }

      $mysqli->close();
      return json_encode($outArray);
   }

   //-------------------------------------------------------------------------------------------------------------------
   public static function arrstrGetDepartmentsByLocation($strDepartment_I)
   {
     $outArray = false;
     $mysqli = EhrDB::subCreateConnection();

     $query = "CALL spDepartmentByLocation(?)";
     if ($stmt = $mysqli->prepare($query))
     {
         $stmt->bind_param("s", $strDepartment_I);
         $stmt->execute();
         $result = $stmt->get_result();

         $outArray = array();
         while ($row = mysqli_fetch_row($result)) {
             $outArray[] = $row;
         }
         $stmt->close();
     }

     $mysqli->close();
     return json_encode($outArray);
  }

  //-------------------------------------------------------------------------------------------------------------------
  public static function arrstrGetAllLocations()
  {
    $outArray = false;
    $mysqli = EhrDB::subCreateConnection();

    $query = "CALL spGetAllLocations()";

    if ($stmt = $mysqli->prepare($query))
    {
        $stmt->execute();
        $result = $stmt->get_result();

        $outArray = array();
        while ($row = mysqli_fetch_row($result)) {
            $outArray[] = $row;
        }
        $stmt->close();
    }

    $mysqli->close();
    return json_encode($outArray);
 }

 //-------------------------------------------------------------------------------------------------------------------
 public static function arrstrAlergias($strFname, $strLname)
 {
     $outArray = false;
     $mysqli = EhrDB::subCreateConnection();

     $query = "SELECT fname, lname, allergy FROM patient p join record r on p.id = r.idPatient join allergies a on r.id = a.idRecord where fname like ? and lname like ?";

     if ($stmt = $mysqli->prepare($query))
     {
        if($strFname == "")
        {
          $strFname = "%";
        }
        if($strLname == "")
        {
          $strLname = "%";
        }
        $stmt->bind_param("ss", $strFname, $strLname);
        $stmt->execute();
        $result = $stmt->get_result();

         $outArray = array();
         while ($row = mysqli_fetch_row($result)) {
             $outArray[] = $row;
         }
         $stmt->close();
     }

     $mysqli->close();
     return json_encode($outArray);
  }

  public static function arrstrTodosPacientes($strFname, $strLname)
  {
      $outArray = false;
      $mysqli = EhrDB::subCreateConnection();

      $query = "SELECT p.id, fname, lname, birthdate, sex, bloodType, COUNT(allergy) FROM patient p join record r on p.id = r.idPatient join allergies a on r.id = a.idRecord where fname like ? and lname like ? group by id, fname, lname, birthdate, bloodType";

      if ($stmt = $mysqli->prepare($query))
      {
         if($strFname == "")
         {
           $strFname = "%";
         }
         if($strLname == "")
         {
           $strLname = "%";
         }
         $stmt->bind_param("ss", $strFname, $strLname);
         $stmt->execute();
         $result = $stmt->get_result();

          $outArray = array();
          while ($row = mysqli_fetch_row($result)) {
              $outArray[] = $row;
          }
          $stmt->close();
      }

      $mysqli->close();
      return json_encode($outArray);
   }

   public static function arrstrMedicamentosPaciente($strFname, $strLname)
   {
       $outArray = false;
       $mysqli = EhrDB::subCreateConnection();

       $query = "SELECT fname, lname, genericName, startdate, dateDiff(enddate, startdate) AS numberDays, instructions, sideEffects, dc.comments from patient p join record r on p.id = r.idPatient join doctorVisit dv on dv.idRecord = r.id join prescription pr on pr.id = dv.idPrescription join prescriptionDetails pd on pd.idPrescription = pr.id join drugCatalog dc on pd.idDrugCatalog = dc.id where p.fname like ? and p.lname like ?";

       if ($stmt = $mysqli->prepare($query))
       {
          if($strFname == "")
          {
            $strFname = "%";
          }
          if($strLname == "")
          {
            $strLname = "%";
          }
          $stmt->bind_param("ss", $strFname, $strLname);
          $stmt->execute();
          $result = $stmt->get_result();

           $outArray = array();
           while ($row = mysqli_fetch_row($result)) {
               $outArray[] = $row;
           }
           $stmt->close();
       }

       $mysqli->close();
       return json_encode($outArray);
    }

  //-------------------------------------------------------------------------------------------------------------------
}

//======================================================================================================================
?>
