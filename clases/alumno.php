<?php 
    require_once("connect.php");

    class _Alumno extends _connect{
            public $id;
            public $nombres;
            public $apellidos;
            public $rut;
            public $email;
            public $telefono;
            public $direccion;
            public $comuna;
            public $region;
            public $fnacimiento;
            public $congregacion;
            public $anio;
            public $vigencia;
            public $foto;
    
        public function __construct(){
            parent::__construct();
        }

        //METODOS

        public function busca_credencial($ID_alumno){
            $qSQL = "SELECT m.meta_value as nombre,"; 
            $qSQL = $qSQL ." (SELECT m.meta_value FROM wpjy_usermeta m WHERE m.meta_key = 'last_name' AND m.user_id = " .$ID_alumno .") as apellido,";
            $qSQL = $qSQL ." (SELECT m.meta_value FROM wpjy_usermeta m WHERE m.meta_key = 'rut' AND m.user_id = " .$ID_alumno .") as rut, ";
            $qSQL = $qSQL ." (SELECT m.meta_value FROM wpjy_usermeta m WHERE m.meta_key = 'ingreso' AND m.user_id = " .$ID_alumno .") as ingreso, ";
            $qSQL = $qSQL ." (SELECT m.meta_value FROM wpjy_usermeta m WHERE m.meta_key = 'vigencia' AND m.user_id = " .$ID_alumno .") as vigencia ";
            $qSQL = $qSQL ."  FROM wpjy_usermeta m WHERE m.meta_key = 'first_name' AND m.user_id = " .$ID_alumno;

            $result = $this->_connection->query($qSQL);
            $credencial = $result->fetch_all(MYSQLI_ASSOC);
            $this->_connection->close();

            return $credencial;
        }


        public function guardaAlumno($datosAlumno){
            $qSQL = "INSERT INTO alumnos (Alu_rut, ";
            $qSQL = $qSQL ."Alu_nombres, ";
            $qSQL = $qSQL ."Alu_ApePaterno, ";
            $qSQL = $qSQL ."Alu_ApeMaterno,";
            $qSQL = $qSQL ."Alu_FecNacimiento,";
            $qSQL = $qSQL ."Alu_telefono,";
            $qSQL = $qSQL ."Alu_Email,";
            $qSQL = $qSQL ."Alu_Direccion,";
            $qSQL = $qSQL ."Alu_Comuna ,";
            $qSQL = $qSQL ."Alu_Congregacion) ";
            $qSQL = $qSQL ." VALUES('";
            $qSQL = $qSQL .$datosAlumno[0] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[1] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[2] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[3] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[4] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[5] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[6] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[7] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[8] ."',";
            $qSQL = $qSQL ."'".$datosAlumno[9] ."')";            

            $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($insert){
                $msg = '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Bien hecho! Los datos han sido guardados con éxito.</div>';
            }else{
                $msg = '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Error. No se pudo guardar los datos !</div>';
            }

            $this->_connection->close();    
            return $msg;

        }

        public function editaAlumno($datosAlumno){
            $qSQL = "UPDATE alumnos SET  ";
            $qSQL = $qSQL ."Alu_nombres = '". $datosAlumno[1]  ."', ";
            $qSQL = $qSQL ."Alu_ApePaterno = '".$datosAlumno[2] ."',";
            $qSQL = $qSQL ."Alu_ApeMaterno = '".$datosAlumno[3] ."',";
            $qSQL = $qSQL ."Alu_FecNacimiento = '".$datosAlumno[4] ."',";
            $qSQL = $qSQL ."Alu_telefono = '".$datosAlumno[5] ."',";
            $qSQL = $qSQL ."Alu_Email = '".$datosAlumno[6] ."',";
            $qSQL = $qSQL ."Alu_Direccion = '".$datosAlumno[7] ."',";
            $qSQL = $qSQL ."Alu_Comuna = '".$datosAlumno[8] ."',";
            $qSQL = $qSQL ."Alu_Congregacion = '".$datosAlumno[9] ."'";  
            $qSQL = $qSQL ." WHERE alumnos.Alu_Id = " .$datosAlumno[0]  ;

      

            $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($insert){
                $oper = 1;
            }else{
                 $oper = 0;
            }

            $this->_connection->close();    
            return $oper;

        }        

        public function borraAlumno($IdAlumno){
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($IdAlumno,ENT_QUOTES)));            

            $cek = mysqli_query($this->_connection, "SELECT * FROM alumnos WHERE Alu_Id='$nik'");
            if(mysqli_num_rows($cek) == 0){
                echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> No se encontraron datos.</div>';
            }else{
                $delete = mysqli_query($this->_connection, "DELETE FROM alumnos WHERE Alu_Id='$nik'");
                if($delete){
                    echo '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Datos eliminado correctamente.</div>';
                }else{
                    echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Error, no se pudo eliminar los datos.</div>';
                }
            }  
            $this->_connection->close();          
        }

        public function frut( $rut ) {
            return number_format( substr ( $rut, 0 , -1 ) , 0, "", ".") . '-' . substr ( $rut, strlen($rut) -1 , 1 );
        }        

        public function frutAdd($rut){
            return str_replace(".","",str_replace("-","",$rut));
        }

        public function urlFoto($url){
            if(is_null($url)){
                $urlFoto = "http://ibc-cce.cl/wp/wp-content/uploads/2021/12/346e1df0044fd77dfb6f65cc086b2d5e1.jpg";   
             }
             else{
                $myArray = explode(";", $url);

                preg_match_all('#\bhttps?://[^,\s()<>]+(?:\([\w\d]+\)|([^,[:punct:]\s]|/))#', $myArray[5], $match);
                $urlFoto = $match[0][0];
             }
            return $urlFoto;
        }

        public function listaFiltro($filtro){
            $qSQL = "SELECT * FROM alumnos " .$filtro;
            $result = $this->_connection->query($qSQL);
            $lista  = $result->fetch_all(MYSQLI_ASSOC);

            $this->_connection->close();
            return $lista;
        }

        public function buscaAlumno($idAlumno){
            $sSQL = "SELECT * FROM alumnos WHERE Alu_Id = " .$idAlumno;
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($_GET["nik"],ENT_QUOTES)));
            $result = $this->_connection->query($sSQL);
            $alumno = $result->fetch_all(MYSQLI_ASSOC);
            $this->_connection->close();

            return $alumno;
        }
    }
?>