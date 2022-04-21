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
                $msg = '';
            }else{
                $msg = 'error';
            }
            $this->cerrar();
            return $msg;
        }

        function cargaAnios(){
            $qSQL = "SELECT Anio_Clase FROM clases GROUP BY Anio_Clase ORDER BY Anio_Clase  DESC";
            $this->abrir();
            $result = $this->_connection->query($qSQL);
            print_r($result);
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