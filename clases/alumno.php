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
            public $Curso;
            public $Sede;
    
        public function __construct(){
            parent::__construct();
        }

        //METODOS
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


        public function guardaAlumno($datosAlumno){
            $qSQL = "INSERT INTO alumnos (Alu_rut, ";
            $qSQL = $qSQL ."Alu_Don, ";
            $qSQL = $qSQL ."Alu_Nombres, ";
            $qSQL = $qSQL ."Alu_ApePaterno, ";
            $qSQL = $qSQL ."Alu_ApeMaterno,";
            $qSQL = $qSQL ."Alu_FecNacimiento,";
            $qSQL = $qSQL ."Alu_telefono,";
            $qSQL = $qSQL ."Alu_Email,";
            $qSQL = $qSQL ."Alu_Direccion,";
            $qSQL = $qSQL ."Alu_Comuna ,";
            $qSQL = $qSQL ."Alu_Congregacion) ";
            $qSQL = $qSQL ." VALUES('";
            $qSQL = $qSQL .$this->frutAdd($datosAlumno[':rut']) ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':don']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':nombres']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':ape_pat']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':ape_mat']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':telefono']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':email']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':direccion']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':comuna']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':fnacimiento']  ."',";
            $qSQL = $qSQL ."'".$datosAlumno[':congregacion']  ."')";            
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
                    echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
					<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
					<strong>Eliminado!</strong> Los datos fueron eliminados con exito.
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				  </div>';
                }else{
                    echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
					<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
					<strong>Error!</strong> ocurrio un error al eliminar los datos.
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				  </div>';
                }
            }  
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
            $this->_connection->close(); 
        }

        public function buscaAlumno($idAlumno){
            $sSQL = "SELECT * FROM alumnos WHERE Alu_Id = " .$idAlumno;
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($_GET["nik"],ENT_QUOTES)));
            $result = $this->_connection->query($sSQL);
            $alumno = $result->fetch_all(MYSQLI_ASSOC);
            $this->_connection->close();

            return $alumno;
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
    }
?>