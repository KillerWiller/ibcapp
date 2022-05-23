<?php 
    require_once("connect.php");

    class _Clase extends _connect{
        public $id_Clase;
        public $Id_Materia;
        public $Id_Profesor;
        public $Id_Sede;
        public $Id_Curso;
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
                $qSQL = $qSQL ."Id_Curso, ";
                $qSQL = $qSQL ."Anio_Clase) ";
                $qSQL = $qSQL ." VALUES(";
                $qSQL = $qSQL . $this->Id_Materia  .",";
                $qSQL = $qSQL . $this->Id_Profesor  .",";
                $qSQL = $qSQL . $this->Id_Sede  .",";
                $qSQL = $qSQL . $this->Id_Curso  .",";
                $qSQL = $qSQL . $this->Anio_Clase  .")";            
                $this->abrir();
                $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
                if($insert){
                    $msg = 'success';
                }else{
                    $msg = 'error';
                }
                $this->cerrar();
            }
            else{
                $msg = 'existe';
            }
            return $msg;
        }

        function validaClase(){
            $qSQL= "SELECT Id_Clase FROM clases WHERE ";
            $qSQL = $qSQL ."Id_Materia = '".$this->Id_Materia ."' AND Id_Sede = '". $this->Id_Sede ."' AND Id_Profesor = '".$this->Id_Profesor."' AND Id_Curso = '".$this->Id_Curso."'";
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

        function listaClases() {
            $sWHERE = " WHERE 1 = 1 ";
            if($this->Id_Sede >0){$sWHERE = " AND Id_Sede = '". $this->Id_Sede ."'";}
            $sSQL = "SELECT c.Id_Clase, c.Anio_Clase, m.Nombre_Materia,p.Nombre_Periodo, s.sede, CONCAT(t.Nombres_Profesor ,' ', t.ApePat_Profesor) as Profesor "; 
            $sSQL = $sSQL . "FROM clases c  LEFT JOIN  vw_sedes s ON c.Id_Sede = s.Id_Sede LEFT JOIN materias m ON c.Id_Materia = m.Id_Materia LEFT JOIN periodos p ON c.Id_Periodo = p.Id_Periodo LEFT JOIN profesores t ON c.Id_Profesor = t.Id_Profesor  ";
            $sSQL = $sSQL . $sWHERE;
            $sSQL = $sSQL . " GROUP BY c.Anio_Clase, m.Nombre_Materia, s.sede ORDER BY c.Anio_Clase, s.sede, m.Nombre_Materia ASC";
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

            if($this->Id_Curso  > 0){
                $sWHERE .= "Id_Curso =" .$this->Id_Curso;
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
                FROM clases c INNER JOIN cursos u on c.Id_Curso = u.Id_Curso 
                    INNER JOIN materias m ON c.Id_Materia = m.Id_Materia 
                    INNER JOIN sedes s ON c.Id_Sede = s.Id_Sede INNER JOIN profesor p ON c.Id_Profesor = p.Id_Profesor";
            $qSQL .= $qSQL .$sWHERE . " 1 = 1";
        }

    }
?>