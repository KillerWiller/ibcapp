<?php 
    require_once("connect.php");

    class _Materia extends _connect{
        public $Id_Materia;
        public $Nombre_Materia;
        
        public function __construct(){
            parent::__construct();
        }

        //METODOS
        public function listaMaterias(){
            $this->abrir();
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
            $this->cerrar();
            return json_encode(['JMaterias' => $materias]);
        }  

        public function guardarMaterias(){
            $qSQL = "INSERT INTO materias ";
            $qSQL = $qSQL ."(Nombre_Materia) ";
            $qSQL = $qSQL ." VALUES('";
            $qSQL = $qSQL . strtoupper($this->Nombre_Materia)  ."')";
            $this->abrir();
            $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($insert){
                $msg = 'success';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;
        }

        public function buscaMateria($Id_Materia){
            $this->abrir();
            $sSQL = "SELECT * FROM materias WHERE Id_Materia = $Id_Materia";
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
            return json_encode(['JMaterias' => $output]);  
        }

        public function editarMaterias(){
            $qSQL = "UPDATE materias ";
            $qSQL = $qSQL ."SET Nombre_Materia =  '" . strtoupper($this->Nombre_Materia)  ."'";
            $qSQL = $qSQL ." WHERE Id_MAteria = " .$this->Id_Materia;
            
            $this->abrir();
            $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($insert){
                $msg = 'success';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;
        }

        public function borraMateria($nik){
            $this->abrir();
            $conta = $this->validaMateria($nik);
            if ($conta==0){
                $nik = mysqli_real_escape_string($this->_connection,(strip_tags($nik,ENT_QUOTES)));            
                $delete = mysqli_query($this->_connection, "DELETE FROM  materias  WHERE Id_Materia ='$nik'");
                if($delete){
                    $msg = '';
                }else{
                    $msg = 'error';
                }
            }
            else{
                $msg = "Existen $conta clases  con esta materia, verifique que no existan clases realcionadas";
            }
            $this->cerrar();
            return $msg;
        }        

        function validaMateria($Id_Materia){
            $sSQL = "SELECT Id_Clase as clases FROM clases WHERE Id_Materia = $Id_Materia";
            if ($result = mysqli_query($this->_connection, $sSQL)) {
               // echo "Returned rows are: " . ;mysqli_free_result($result);
                // Free result set
                $output  = mysqli_num_rows($result);
              }
            return $output;  
        }
    }
?>