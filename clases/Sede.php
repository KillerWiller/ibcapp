<?php 
    require_once("connect.php");

    class _Sede extends _connect{
            public $id;
            public $nombre;
            public $direccion;
            public $comuna;
            public $region;

            public function __construct(){
                parent::__construct();
            }

    //METODOS
        public function cargaSelecetSedes(){
            $qSQL = "SELECT * FROM Sedes ";
            $result = $this->_connection->query($qSQL);

            if ($result->num_rows > 0) {
                // output data of each row
                while($row = mysqli_fetch_array($result)) {
                  echo "<option value=" .$row["Sde_Id"] .">". strtoupper($row["Sde_Nombre"])."</option>";
                 }
              } else {
                echo "Sin resultados";
              }
              $this->_connection->close();
        }        
    }
?>