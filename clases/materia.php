<?php 
    require_once("connect.php");

    class _Materia extends _connect{
        public $Id_Materia;
        public $Nombre_Materia;
        
        public function __construct(){
            parent::__construct();
        }

        //METODOS
        public function cargaMaterias(){
            $qSQL = "SELECT * FROM materias ";
            $result = $this->_connection->query($qSQL);

            if ($result->num_rows > 0) {
                // output data of each row
                $materias = array();
                while($row = mysqli_fetch_array($result)) {
                    $materias [] = $row;
                }
            } else {
                echo "Sin resultados";
            }
            $this->_connection->close();
            return json_encode(['JMaterias' => $materias]);
        }  
    }
?>