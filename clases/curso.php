<?php 
    require_once("connect.php");

    class _Curso extends _connect{
        public $idCurso;
        public $nombreCurso;
        
        public function __construct(){
            parent::__construct();
        }

    //METODOS
        public function cargaCursos(){
            $qSQL = "SELECT * FROM cursos ";
            $result = $this->_connection->query($qSQL);

            if ($result->num_rows > 0) {
                // output data of each row
                $cursos = array();
                while($row = mysqli_fetch_array($result)) {
                    $cursos [] = $row;
                }
            } else {
                echo "Sin resultados";
            }
            $this->_connection->close();
            return json_encode(['jCursos' => $cursos]);
        }          

    }
?>