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
            $this->abrir();
            $sSQL = "SELECT * FROM profesor WHERE Estado_Profesor = 1 ORDER BY Nombres_Profesor, ApePAt_Profesor";
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
            return json_encode(['JProfesores' => $output]);  
        }

        public function frutAdd($rut){
            return str_replace(".","",str_replace("-","",$rut));
        }        

        public function borraProfesor($IdProfesor) {
            $this->abrir();
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($IdProfesor,ENT_QUOTES)));            
            $delete = mysqli_query($this->_connection, "UPDATE  profesor SET Estado_profesor = 0 WHERE Id_Profesor ='$nik'");
            if($delete){
                $msg = '';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;
        }

        public function buscaProfesor($Id_Profesor){
            $this->abrir();
            $sSQL = "SELECT * FROM profesor WHERE Id_Profesor = $Id_Profesor";
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
            return json_encode(['jProfesores' => $output]);  
        }

        public function editarProfesor(){
            $qSQL = "UPDATE profesor ";
            $qSQL = $qSQL ." SET ";
            $qSQL = $qSQL ."Nombres_Profesor = '$this->Nombres_Profesor' , ";
            $qSQL = $qSQL ."ApePat_Profesor = '$this->ApePat_Profesor', ";
            $qSQL = $qSQL ."ApeMat_Profesor = '$this->ApeMat_Profesor', ";
            $qSQL = $qSQL ."Telefono_Profesor = '$this->Telefono_Profesor', ";
            $qSQL = $qSQL ."Email_Profesor = '$this->Email_Profesor', ";
            $qSQL = $qSQL ."Direccion_Profesor = '$this->Direccion_Profesor'";
            $qSQL = $qSQL ."WHERE Id_Profesor =  = '$this->Id_Profesor'";
        
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

        public function frut( $rut ) {
            return number_format( substr ( $rut, 0 , -1 ) , 0, "", ".") . '-' . substr ( $rut, strlen($rut) -1 , 1 );
        }  
    }
?> 