<?php 
    require_once("connect.php");

    class _Alumno extends _connect{
            public $Id_Alumno;
            public $Rut_Alumno;
            public $Nombres_Alumno;
            public $ApePat_Alumno;
            public $ApeMat_Alumno;
            public $Telefono_Alumno;
            public $Email_Alumno;
            public $Direccion_Alumno;
            public $FecNacimiento_Alumno;
            public $Sexo_Alumno;
            public $Congregacion_Alumno;
  
    
        public function __construct(){
            parent::__construct();
        }

        //METODOS

        public function listaAlumnos(){
            $this->abrir();
            $sSQL = "SELECT * FROM alumnos WHERE Estado_Alumno = 1";
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
            return json_encode(['jAlumnos' => $output]); 
        }


        public function cargaCSVAlumnos(){
            return "OK";
        }


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


        public function guardaAlumno(){
            $qSQL = "INSERT INTO alumnos (Rut_Alumno, ";
            $qSQL = $qSQL ."Nombres_Alumno, ";
            $qSQL = $qSQL ."ApePat_Alumno, ";
            $qSQL = $qSQL ."ApeMat_Alumno,";
            $qSQL = $qSQL ."Telefono_Alumno, ";
            $qSQL = $qSQL ."Email_Alumno,";
            $qSQL = $qSQL ."Direccion_Alumno,";
            $qSQL = $qSQL ."FecNacimiento_Alumno,";
            $qSQL = $qSQL ."Sexo_Alumno ,";
            $qSQL = $qSQL ."Congregacion_Alumno) ";
            $qSQL = $qSQL ." VALUES('";
            $qSQL = $qSQL .$this->frutAdd($this->Rut_Alumno) ."',";
            $qSQL = $qSQL ."'". $this->Nombres_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->ApePat_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->ApeMat_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->Telefono_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->Email_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->Direccion_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->FecNacimiento_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->Sexo_Alumno  ."',";
            $qSQL = $qSQL ."'". $this->Congregacion_Alumno  ."')";            
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

        public function editaAlumno(){
            $qSQL = "UPDATE alumnos SET  ";
            $qSQL = $qSQL ."Nombres_Alumno = '". $this->Nombres_Alumno  ."', ";
            $qSQL = $qSQL ."ApePat_Alumno = '". $this->ApePat_Alumno ."',";
            $qSQL = $qSQL ."ApeMat_Alumno = '". $this->ApeMat_Alumno ."',";
            $qSQL = $qSQL ."Telefono_Alumno = '". $this->Telefono_Alumno ."',";
            $qSQL = $qSQL ."Email_Alumno = '". $this->Email_Alumno ."',";
            $qSQL = $qSQL ."Direccion_Alumno = '". $this->Direccion_Alumno ."',";
            $qSQL = $qSQL ."FecNacimiento_Alumno = '". $this->FecNacimiento_Alumno ."',";
            $qSQL = $qSQL ."Sexo_Alumno = '". $this->Sexo_Alumno ."',";
            $qSQL = $qSQL ."Congregacion_Alumno = '". $this->Congregacion_Alumno ."'";  
            $qSQL = $qSQL ." WHERE Id_Alumno = " . $this->Id_Alumno;

      
            $this->abrir();
            $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($insert){
                $oper = 1;
            }else{
                 $oper = 0;
            }

            $this->cerrar();   
            return $oper;

        }        

        public function borraAlumno($IdAlumno){
            $this->abrir();
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($IdAlumno,ENT_QUOTES)));            
            $delete = mysqli_query($this->_connection, "UPDATE  alumnos SET Estado_Alumno = 0 WHERE Id_Alumno ='$nik'");
            if($delete){
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

        public function frutAdd($rut){
            return str_replace(".","",str_replace("-","",$rut));
        }

        function cleanRut($rut) {
            $string = str_replace(' ', '-', $rut); // Replaces all spaces with hyphens.
         
            return preg_replace('/[^A-Za-z0-9\-]/', '', $rut); // Removes special chars.
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
            $this->abrir();
            $sSQL = "SELECT * FROM alumnos WHERE Id_Alumno = " .$idAlumno;
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
            return json_encode(['jAlumnos' => $output]); 
        }

        public function AJXbuscaAlumno($search){
            $sSQL = "SELECT Alu_Id,Alu_ApePaterno,Alu_ApeMaterno,Alu_Nombres FROM alumnos WHERE  
                    Alu_ApePaterno LIKE '%" .$search ."%' OR Alu_ApeMaterno LIKE '%" .$search ."%' OR Alu_Nombres LIKE '%" .$search ."%'";
            $result = mysqli_query($this->_connection, $sSQL);

            $output = "";
            if(mysqli_num_rows($result) > 0){
                $no = 1;
                $output .= "<ul  class='list-group'>";
                  while($row = mysqli_fetch_array($result))
                  {
                   $output .= "<li class='list-group-item' id='".$row[0]."' onClick='agregaACurso(this.id)'> 
                                <button type='button' title='Agregar a curso'   class='btn btn-light'><svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' fill='currentColor' class='bi bi-person-plus-fill' viewBox='0 0 16 16'>
                                <path d='M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z'/>
                                <path fill-rule='evenodd' d='M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z'/>
                                </svg> </button>".$row[1] ." " .$row[2] . " " .$row[3] ."</li>";
                  }
                  $output .= '</ul>';
                  echo $output;     
            }
            else
            {
                echo 'No existen datos.';
            }
            $this->_connection->close();
        }

        public function buscaAlumnoRut($rut){

            $sSQL = "SELECT * FROM alumnos WHERE Alu_Rut = '" .$this->cleanRut($rut) ."'";
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($rut,ENT_QUOTES)));
            $result = $this->_connection->query($sSQL);
            $alumno = $result->fetch_all(MYSQLI_ASSOC);
            $this->_connection->close();

            return $alumno;
        }        

        public function buscaAlumnoRapida($search){
            $sSQL = "SELECT a.Alu_Id,a.Alu_Rut ,CONCAT(a.Alu_ApePaterno,' ',a.Alu_ApeMaterno, ' ' ,a.Alu_Nombres) as nombre,a.Alu_Telefono,a.Alu_Email FROM alumnos a WHERE  
                    a.Alu_ApePaterno LIKE '%" .$search ."%' OR a.Alu_ApeMaterno LIKE '%" .$search ."%' OR a.Alu_Nombres LIKE '%" .$search ."%'";
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
            return json_encode(['jAlumnos' => $output]);         
        }
    }
?>