<?php 
    require_once("connect.php");

    class _Clase extends _connect{
        public $id_Clase;
        public $Id_Materia;
        public $Id_Profesor;
        public $Id_Sede;
        public $Id_Periodo;
        public $Anio_Clase;
        
        public function __construct(){
            parent::__construct();
        }

        public function guardarClase(){
            /* VALIDAR QUE ANIO-SEDE -PERIODO - MATERIA*/
            if($this->validaClase()){
                $qSQL = "INSERT INTO clases ( ";
                $qSQL = $qSQL ."Id_Materia, ";
                $qSQL = $qSQL ."Id_Profesor, ";
                $qSQL = $qSQL ."Id_Sede, ";
                $qSQL = $qSQL ."Id_Periodo, ";
                $qSQL = $qSQL ."Anio_Clase) ";
                $qSQL = $qSQL ." VALUES(";
                $qSQL = $qSQL . $this->Id_Materia  .",";
                $qSQL = $qSQL . $this->Id_Profesor  .",";
                $qSQL = $qSQL . $this->Id_Sede  .",";
                $qSQL = $qSQL . $this->Id_Periodo  .",";
                $qSQL = $qSQL . $this->Anio_Clase  .")";            
                $this->abrir();
                $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
                if($insert){
                    $msg = 1;
                }else{
                    $msg = 0;
                }
                $this->cerrar();
            }
            else{
                $msg = 0;
            }
            return $msg;
        }


        public function editaClase($id_Clase){
            /* VALIDAR QUE ANIO-SEDE -PERIODO - MATERIA*/
            if($this->validaClase()){
                $qSQL = "UPDATE clases SET ";
                $qSQL = $qSQL ."Id_Materia = $this->Id_Materia ,";
                $qSQL = $qSQL ."Id_Profesor = $this->Id_Profesor, ";
                $qSQL = $qSQL ."Id_Sede = $this->Id_Sede, ";
                $qSQL = $qSQL ."Id_Periodo = $this->Id_Periodo, ";
                $qSQL = $qSQL ."Anio_Clase = $this->Anio_Clase ";
                $qSQL = $qSQL ." WHERE Id_Clase = $id_Clase";
         
                $this->abrir();
                $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
                if($insert){
                    $msg = 1;
                }else{
                    $msg = 0;
                }
                $this->cerrar();
            }
            else{
                $msg = 0;
            }
            return $msg;
        }
        
        function validaClase(){
            $qSQL= "SELECT Id_Clase FROM clases WHERE ";
            $qSQL = $qSQL ."Id_Materia = '".$this->Id_Materia ."' AND Id_Sede = '". $this->Id_Sede ."' AND Id_Profesor = '".$this->Id_Profesor."' AND Id_Periodo = '".$this->Id_Periodo."'";
            $this->abrir();
            $result = $this->_connection->query($qSQL);
            $this->cerrar();
            if ($result->num_rows > 0) {
                  return false;
              } else {
                return true;
              }
        }

        function cargaAnios(){
            $qSQL = "SELECT Anio_Clase FROM clases GROUP BY Anio_Clase ORDER BY Anio_Clase  DESC";
            $this->abrir();
            $result = $this->_connection->query($qSQL);
            if ($result->num_rows > 0) {
                // output data of each row
                while($row = mysqli_fetch_array($result)) {
                  echo "<option value=" .$row["Anio_Clase"] .">". $row["Anio_Clase"]."</option>";
                 }
              } else {
                echo "Sin resultados";
              }
              $this->cerrar();
        }

        function listaClases($cWHERE) {
            $sWHERE = " WHERE Estado_Clase = 0 " .$cWHERE;
           // if($this->Id_Sede >0){$sWHERE = " AND Id_Sede = '". $this->Id_Sede ."'";}
            $sSQL = "SELECT c.Id_Clase, c.Anio_Clase, m.Nombre_Materia,p.Nombre_Periodo, s.sede, CONCAT(t.Nombres_Profesor ,' ', t.ApePat_Profesor) as Profesor "; 
            $sSQL = $sSQL . "FROM clases c  LEFT JOIN  vw_sedes s ON c.Id_Sede = s.Id_Sede LEFT JOIN materias m ON c.Id_Materia = m.Id_Materia LEFT JOIN periodos p ON c.Id_Periodo = p.Id_Periodo LEFT JOIN profesores t ON c.Id_Profesor = t.Id_Profesor  ";
            $sSQL = $sSQL . $sWHERE;
            $sSQL = $sSQL . " GROUP BY c.Anio_Clase, m.Nombre_Materia, s.sede  ORDER BY c.Anio_Clase, s.sede, m.Nombre_Materia ASC";
            $this->abrir();
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
            return json_encode(['JClases' => $output]);             
        }

        function buscarClases(){
            $sWHERE = "Anio_Clase = " .$this->Anio_Clase . " AND " ;

            if($this->Id_Periodo  > 0){
                $sWHERE .= "Id_Periodo =" .$this->Id_Periodo;
            }elseif($this->Id_Materia > 0){
                $sWHERE .= "Id_Materia =" .$this->Id_Materia;
            }elseif($this->Id_Sede > 0){
                $sWHERE .= "Id_Sede =" .$this->Id_Sede;
            }elseif($this->Id_Profesor > 0){
                $sWHERE .= "Id_Profesor =" .$this->Id_Profesor;
            }elseif($this->Id_Sede > 0){
                $sWHERE .= "Id_Sede =" .$this->Id_Sede;
            }


            $qSQL =" SELECT c.Anio_Clase, u.Nombre_Curso,m.Nombre_Materia, s.Nombre_Sede,(p.Nombres_Profesor + ' ' + p.ApePat_Profesor) as Nombre_Profesor
                FROM clases c INNER JOIN cursos u on c.Id_Periodo = u.Id_Periodo 
                    INNER JOIN materias m ON c.Id_Materia = m.Id_Materia 
                    INNER JOIN sedes s ON c.Id_Sede = s.Id_Sede INNER JOIN profesor p ON c.Id_Profesor = p.Id_Profesor";
            $qSQL .= $qSQL .$sWHERE . " 1 = 1";
        }

        function borrarClase($idClase){
            $this->abrir();
            $nik = mysqli_real_escape_string($this->_connection,(strip_tags($idClase,ENT_QUOTES)));            
            $delete = mysqli_query($this->_connection, "UPDATE  clases SET Estado_Clase = 1 WHERE Id_Clase ='$idClase'");
            if($delete){
                $msg = '';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;
        }

        function buscaClase($id_Clase){
            $this->abrir();
            $sSQL = "SELECT c.Id_Clase,c.Anio_Clase,p.Id_Periodo,p.Nombre_Periodo,m.Id_Materia,m.Nombre_Materia,t.Id_Profesor,
            CONCAT(t.Nombres_Profesor,' ',t.ApePat_Profesor, ' ', t.ApeMat_Profesor)as profesor,s.Id_Sede,CONCAT(k.Nombre_Comuna,' ',s.Nombre_Sede ) as sede
            FROM clases c INNER JOIN periodos p ON c.Id_Periodo = p.Id_Periodo INNER JOIN materias m ON c.Id_Materia = m.Id_Materia 
            INNER JOIN profesores t ON c.Id_Profesor = t.Id_Profesor INNER JOIN sedes s ON c.Id_Sede = s.Id_Sede 
            INNER JOIN comunas k ON s.Comuna_Sede = k.Id_Comuna WHERE c.Id_Clase = $id_Clase;";
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
            return json_encode(['JSclase' => $output]);

        }
    }
?>