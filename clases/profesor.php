<?php 
    require_once("connect.php");

    class _Profesor extends _connect{
        public $Id_Profesor ;
        public $Rut_Profesor;
        public $Nombres_Profesor;
        public $ApePat_Profesor;
        public $Telefono_Profesor;
        public $Direccion_Profesor;

        public function __construct(){
            parent::__construct();
            $Id_Profesor = "";
            $Rut_Profesor ="";
            $Nombres_Profesor = "";
            $ApePat_Profesor = "";
            $ApeMat_Profesor = "";
            $Telefono_Profesor = "";   
            $Email_Profesor = "";          
            $Direccion_Profesor = "";
        }

        public function guardarProfesor(){
            $qSQL = "INSERT INTO profesor (Rut_Profesor, ";
            $qSQL = $qSQL ."Nombres_Profesor, ";
            $qSQL = $qSQL ."ApePat_Profesor, ";
            $qSQL = $qSQL ."ApeMat_Profesor, ";
            $qSQL = $qSQL ."Telefono_Profesor, ";
            $qSQL = $qSQL ."Email_Profesor, ";
            $qSQL = $qSQL ."Direccion_Profesor)";
            $qSQL = $qSQL ." VALUES('";
            $qSQL = $qSQL .$this->frutAdd($this->Rut_Profesor) ."',";
            $qSQL = $qSQL ."'". $this->Nombres_Profesor  ."',";
            $qSQL = $qSQL ."'". $this->ApePat_Profesor  ."',";
            $qSQL = $qSQL ."'". $this->ApeMat_Profesor  ."',";
            $qSQL = $qSQL ."'". $this->Telefono_Profesor  ."',";
            $qSQL = $qSQL ."'". $this->Email_Profesor  ."',";
            $qSQL = $qSQL ."'". $this->Direccion_Profesor  ."')";            
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

        public function listaProfesores(){
            $sSQL = "SELECT * FROM profesor";
            $result = mysqli_query($this->_connection, $sSQL);

            $output[] = "";
            if(mysqli_num_rows($result) > 0){
                $output = array();
                while($row = mysqli_fetch_assoc($result))
                {
                     $output[] = $row;
                }
            }
            $this->_connection->close();   
            return json_encode(['jProfesores' => $output]);  
        }

        public function frutAdd($rut){
            return str_replace(".","",str_replace("-","",$rut));
        }        
    }
?> 