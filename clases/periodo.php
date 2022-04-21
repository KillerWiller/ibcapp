<?php 
    require_once("connect.php");

    class _Periodo extends _connect{
        public $idPeriodo;
        public $nombrePeriodo;
        
        public function __construct(){
            parent::__construct();
        }

    //METODOS
        public function cargaPeriodos(){
            $qSQL = "SELECT * FROM periodos ";
            $result = $this->_connection->query($qSQL);

            if ($result->num_rows > 0) {
                // output data of each row
                $periodos = array();
                while($row = mysqli_fetch_array($result)) {
                    $periodos [] = $row;
                }
            } else {
                echo "Sin resultados";
            }
            $this->_connection->close();
            return json_encode(['JPeriodos' => $periodos]);
        }          

    }
?>