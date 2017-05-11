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
 public static function arrstrProjectByEmployeeCant($intMinEmployee_I, $intMaxEmployee_I)
 {
     $outArray = false;
     $mysqli = EhrDB::subCreateConnection();

     $query = "SELECT pname, plocation, dname, COUNT(essn) FROM project join department on dnum = dnumber join works_on on pno = pnumber group by pname, plocation, dname having COUNT(essn) between ? and ? ";

     if ($stmt = $mysqli->prepare($query))
     {
        $arr = array("min"=>$intMinEmployee_I,"max"=>$intMaxEmployee_I);
        $stmt->bind_param("ii", $arr['min'], $arr['max']);
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
