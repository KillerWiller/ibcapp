<?php 
    require_once("connect.php");
    class _Sede extends _connect{
            public $Id_Sede;
            public $Nombre_Sede;
            public $Direccion_Sede;
            public $Comuna_Sede;
            public $Region_Sede;

            public function __construct(){
                parent::__construct();
            }

    //METODOS
        public function borraSede($IdSede) {
            $this->abrir();
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($IdSede,ENT_QUOTES)));            
            $delete = mysqli_query($this->_connection, "UPDATE  sedes SET Estado_Sede = 0 WHERE Id_Sede ='$nik'");
            if($delete){
                $msg = '';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;
        }

        public function editarSede(){
            $qSQL = "UPDATE sedes SET ";
            $qSQL = $qSQL ."Nombre_Sede = '" .$this->Nombre_Sede ."',";
            $qSQL = $qSQL ."Direccion_Sede = '" .$this->Direccion_Sede ."',";
            $qSQL = $qSQL ."Region_Sede = " .$this->Region_Sede .",";
            $qSQL = $qSQL ."Comuna_Sede = " .$this->Comuna_Sede;
            $qSQL = $qSQL ." WHERE ";
            $qSQL = $qSQL ."Id_Sede = " .$this->Id_Sede;

        
            $this->abrir();
            $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($insert){
                $msg = '';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;            
        }

        public function cargaSelecetSedes(){
            $qSQL = "SELECT Id_Comuna FROM comuna ORDER BY Numero_Region, Nombre_Comuna ASC ";
            $result = $this->_connection->query($qSQL);
            print_r($result);
            if ($result->num_rows > 0) {
                // output data of each row
                while($row = mysqli_fetch_array($result)) {
                  echo "<option value=" .$row["Id_Comuna"] .">". strtoupper($row["Nombre_Comuna"])."</option>";
                 }
              } else {
                echo "Sin resultados";
              }
              $this->_connection->close();
        }       
        
        public function guardarSede(){
            $qSQL = "INSERT INTO sedes (Nombre_Sede, ";
            $qSQL = $qSQL ."Direccion_Sede, ";
            $qSQL = $qSQL ."Comuna_Sede, ";
            $qSQL = $qSQL ."Region_Sede) ";
            $qSQL = $qSQL ." VALUES('";
            $qSQL = $qSQL . $this->Nombre_Sede ."',";
            $qSQL = $qSQL ."'". $this->Direccion_Sede  ."',";
            $qSQL = $qSQL . $this->Comuna_Sede  .",";
            $qSQL = $qSQL . $this->Region_Sede  .")";            
            $this->abrir();
            $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($insert){
                $msg = '';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;
        }

        public function cargaRegiones(){
            $this->abrir();
            $qSQL = "SELECT Numero_Region,Nombre_Region FROM region ORDER BY Numero_Region, Nombre_Region ASC ";
            $result = $this->_connection->query($qSQL);
            if ($result->num_rows > 0) {
                // output data of each row
                while($row = mysqli_fetch_array($result)) {
                  echo "<option value=" .$row["Numero_Region"] .">". strtoupper($row["Nombre_Region"])."</option>";
                 }
              } else {
                echo "Sin resultados";
              }
              $this->cerrar();
        }           

        public function cargaComunasXRegiones($numero_region){
            $this->abrir();
            $qSQL = "SELECT Id_Comuna,Nombre_Comuna FROM comunas WHERE Numero_Region = $numero_region ORDER BY Nombre_Comuna ASC ";
            $result = $this->_connection->query($qSQL);
            if ($result->num_rows > 0) {
                // output data of each row
                while($row = mysqli_fetch_array($result)) {
                  echo "<option value=" .$row["Id_Comuna"] .">". strtoupper($row["Nombre_Comuna"])."</option>";
                 }
              } else {
                echo "Sin resultados";
              }
              $this->cerrar();
        }        
        
        public function listaSedes(){
            $this->abrir();
            $sSQL = "SELECT s.Id_Sede,s.Nombre_Sede,s.Direccion_Sede,c.Nombre_comuna as Comuna_Sede FROM sedes s INNER JOIN comunas c ON c.Id_Comuna = s.Comuna_Sede WHERE Estado_sede = 1";
            $result = mysqli_query($this->_connection, $sSQL);

            $output[] = "";
            if(mysqli_num_rows($result) > 0){
                $output = array();
                while($row = mysqli_fetch_assoc($result))
                {
                     $output[] = $row;
                }
            }
            $this->cerrar();
            return json_encode(['jSedes' => $output]);             
        }

        public function buscaSede($IdSede){
            $this->abrir();
            $sSQL = "SELECT s.Id_Sede,s.Nombre_Sede, s.Direccion_Sede,s.Comuna_Sede, c.Nombre_Comuna,s.Region_Sede ,r.Nombre_Region FROM sedes s INNER JOIN comunas c ON s.Comuna_Sede = c.Id_Comuna INNER JOIN region r ON s.Region_Sede = r.Numero_region WHERE s.Id_Sede = $IdSede";
            $result = mysqli_query($this->_connection, $sSQL);

            $output[] = "";
            if(mysqli_num_rows($result) > 0){
                $output = array();
                while($row = mysqli_fetch_assoc($result))
                {
                     $output[] = $row;
                }
            }
            $this->cerrar();
            return json_encode(['jSedes' => $output]); 
        }
    }

    
?>