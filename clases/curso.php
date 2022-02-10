<?php 
    require_once("connect.php");

    class _Curso extends _connect{
        public $idAlumno;
        public $idCurso;
        public $idSede;
        public $anio;
        
        public function __construct(){
            parent::__construct();
        }

    //METODOS
        public function cargaCursos(){
            $qSQL = "SELECT * FROM cursos ";
            $result = $this->_connection->query($qSQL);

            if ($result->num_rows > 0) {
                // output data of each row
                while($row = mysqli_fetch_array($result)) {
                echo "<option value=" .$row["Cur_Id"] .">". strtoupper($row["Cur_Nombre"])."</option>";
                }
            } else {
                echo "Sin resultados";
            }
            $this->_connection->close();
        }          

        public function listaAlumnosCurso($idSede,$IdCurso,$Anio){
            $qSQL = "SELECT x.AluCurId, a.Alu_ApePaterno,a.Alu_ApeMaterno,a.Alu_Nombres 
                      FROM alumnos a INNER JOIN alumno_curso x ON a.Alu_Id = x.Alu_Id 
                      INNER JOIN cursos c ON c.Cur_Id = x.Cur_Id 
                      INNER JOIN sedes s ON s.Sde_Id = x.Cur_Sede 
                      WHERE x.Cur_Sede = '$idSede' 
                      AND x.Cur_Id = '$IdCurso' 
                      AND x.anio = '$Anio' ORDER BY a.Alu_ApePaterno ASC";

            $result = $this->_connection->query($qSQL);
            $tabla="";
            if ($result->num_rows > 0) {
                // output data of each row
                $no=1;
                $tabla ="<table class='table table-success table-striped  table-hover'>
                <tr>
                    <th></th>
                    <th>N°</th>
                    <th>Ap. Paterno</th>
                    <th>Ap. Materno</th>
                    <th>Nombres</th>
                </tr>";
                while($row = mysqli_fetch_array($result)) {
                 $tabla .= "<tr> 
                        <td> <a href='#' onClick='eliminaACurso(this.id)' id='".$row["AluCurId"]."' class='btn btn-danger btn-sm'> <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-x-circle-fill' viewBox='0 0 16 16'>
                        <path d='M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z'/>
                      </svg> </a></td>
                        <td>".$no ."</td>
                        <td>".$row["Alu_ApePaterno"] ."</td>
                        <td>".$row["Alu_ApeMaterno"] ."</td>
                        <td>".$row["Alu_Nombres"] ."</td>
                      </tr>  ";  
                    $no++;
                }
            } else {
                $tabla .= "Sin resultados";
            }
            $tabla .= "</table>";
            $this->_connection->close();
            return $tabla;
        }

        public function agregaAlumnoCurso($idAlumno,$sede,$IdCurso,$Anio){
            $this->abrir();
            $sSQL = "SELECT AluCurId FROM alumno_curso WHERE Alu_Id = $idAlumno AND Cur_Id =$IdCurso AND Cur_Sede = $sede AND Anio = $Anio";
            $result = $this->_connection->query($sSQL);
            if ($result->num_rows == 0) {
                    $qSQL ="INSERT INTO alumno_curso (Alu_Id,Cur_Sede,Cur_Id,Anio)
                            VALUES (" . $idAlumno ."," .$sede ."," .$IdCurso ."," .$Anio .")";
                    $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
                    if($insert){
                        $result = $this->listaAlumnosCurso($sede,$IdCurso,$Anio);
                    }
                    else{
                        $result = "";
                    }
                } 
            else{
                $result = "";
            }
            $this->cerrar();
          return $result;
        }

        public function borraAlumnoCurso($idAlumnoCurso,$sede,$IdCurso,$Anio){
            $this->abreCnx();
            $qSQL ="DELETE FROM alumno_curso WHERE AluCurId = $idAlumnoCurso";
            $delete = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
            if($delete){
                $result = $this->listaAlumnosCurso($sede,$IdCurso,$Anio);
            }
            else{
                $result = "";
            }
          return $result;
        }        

        public function cargaAnio(){
            $this->abreCnx();
            $qSQL = "SELECT Anio FROM alumno_curso GROUP BY Anio ORDER BY Anio DESC";
            $result = $this->_connection->query($qSQL);

            if ($result->num_rows > 0) {
                // output data of each row
                while($row = mysqli_fetch_array($result)) {
                    echo "<option value=" .$row["Anio"] .">". strtoupper($row["Anio"])."</option>";
                }
            } else {
                echo "Sin resultados";
            }
            $this->_connection->close();
        }                      
        
        public function listadoCursoSedeAnio($IdCurso,$idSede,$Anio){
            $qSQL = "SELECT a.Alu_ApePaterno,a.Alu_ApeMaterno,a.Alu_Nombres, a.Alu_Email,Alu_Telefono 
            FROM alumnos a INNER JOIN alumno_curso x ON a.Alu_Id = x.Alu_Id 
            INNER JOIN cursos c ON c.Cur_Id = x.Cur_Id 
            INNER JOIN sedes s ON s.Sde_Id = x.Cur_Sede 
            WHERE x.Cur_Sede = '$idSede' 
            AND x.Cur_Id = '$IdCurso' 
            AND x.anio = '$Anio' ORDER BY a.Alu_ApePaterno ASC";

            $result = $this->_connection->query($qSQL);
            $tabla="";
            if ($result->num_rows > 0) {
                // output data of each row
                $no=1;
                $tabla ="";
                while($row = mysqli_fetch_array($result)) {
                $tabla .= "<tr> 
                        <td>".$no ."</td>
                        <td>".$row["Alu_ApePaterno"] ."</td>
                        <td>".$row["Alu_ApeMaterno"] ."</td>
                        <td>".$row["Alu_Nombres"] ."</td>
                        <td>".$row["Alu_Email"] ."</td>
                        <td>".$row["Alu_Telefono"] ."</td>
                        </tr>  ";  
                    $no++;
                }
            } else {
                $tabla .= "Sin resultados";
            }
            $this->_connection->close();
            return $tabla;
        }

        public function cargaDesdeCsv($rut,$curso,$sede,$anio){
            $this->abrir();
            $msg="";
            $qSQL = "SELECT Alu_id FROM alumnos WHERE Alu_Rut = '" .$rut."'";
            $result = $this->_connection->query($qSQL);
            if ($result->num_rows > 0) {
                while($row = mysqli_fetch_array($result)) {
                    $qSQL2 ="INSERT INTO alumno_curso (Alu_Id,Cur_Sede,Cur_Id,Anio)
                    VALUES (" . $row["Alu_id"]."," .$sede ."," .$curso ."," .$anio .")";
                    $insert = mysqli_query($this->_connection,$qSQL2) or die(mysqli_error());
                }
            }
            else{
                $msg="Error al agregar cursos";
            }
            $this->cerrar();
            return $msg;
        }
    }
?>