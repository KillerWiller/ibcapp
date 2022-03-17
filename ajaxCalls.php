<?php


    if(isset($_POST["crearClase"])){
        if (is_file("clases\clase.php")){
            require_once("clases\clase.php");
        }
        else {
            require_once("./clases/clase.php");
        }

        $clase = new _Clase();
        $clase->Id_Materia = $_POST["materia"];
        $clase->Id_Profesor = $_POST["profesor"];
        $clase->Id_Sede = $_POST["sede"];
        $clase->Id_Curso = $_POST["curso"];
        $clase->Anio_Clase = $_POST["anio"];

        $resul = $clase->guardarClase();
        unset($_POST['']);
        if(strlen($resul)==0){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);
    }

    if(isset($_POST["guardarSede"])){
        if (is_file("clases\sede.php")){
            require_once("clases\sede.php");
        }
        else {
            require_once("./clases/sede.php");
        }

        $sede = new _Sede();
        $sede->Nombre_Sede = $_POST["nombre"];
        $sede->Direccion_Sede = $_POST["direccion"];
        $sede->Comuna_Sede = $_POST["comuna"];
        $sede->Region_Sede = $_POST["region"];

        $resul = $sede->guardarSede();
        unset($_POST['']);
        if(strlen($resul)==0){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);
    }

    if(isset($_POST["guardarAlumno"])){
        if (is_file("clases\alumno.php")){
            require_once("clases\alumno.php");
        }
        else {
            require_once("./clases/alumno.php");
        }

        $alumno = new _Alumno();
        $alumno->Rut_Alumno = $_POST["rut"];
        $alumno->Nombres_Alumno = $_POST["nombres"];
        $alumno->ApePat_Alumno = $_POST["apepat"];
        $alumno->ApeMat_Alumno = $_POST["apemat"];
        $alumno->Telefono_Alumno = $_POST["telefono"];
        $alumno->Email_Alumno = $_POST["email"];
        $alumno->Direccion_Alumno = $_POST["direccion"];
        $alumno->FecNacimiento_Alumno = $_POST["fecNacimiento"];
        $alumno->Sexo_Alumno = $_POST["sexo"];
        $alumno->Congregacion_Alumno = $_POST["congregacion"];

        $resul = $alumno->guardaAlumno();
        unset($_POST['']);
        if(strlen($resul)==0){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);
    }

    if(isset($_POST["guardarProfesor"])){
            if (is_file("clases\profesor.php")){
                require_once("clases\profesor.php");
            }
            else {
                require_once("./clases/profesor.php");
            }

            $profesor = new _Profesor();
            $profesor->Rut_Profesor = $_POST["rut"];
            $profesor->Nombres_Profesor = $_POST["nombres"];
            $profesor->ApePat_Profesor = $_POST["apepat"];
            $profesor->ApeMat_Profesor = $_POST["apemat"];
            $profesor->Telefono_Profesor = $_POST["telefono"];
            $profesor->Email_Profesor = $_POST["email"];
            $profesor->Direccion_Profesor = $_POST["direccion"];

            $resul = $profesor->guardarProfesor();
            unset($_POST['']);
            if(strlen($resul)==0){
                $output = array('success'  => true);
            }
            else{
                $output = array('error'  => true);
            }
            echo json_encode($output);
    }

    if(isset($_POST["editarSede"])){
        if (is_file("clases\sede.php")){
            require_once("clases\sede.php");
        }
        else {
            require_once("./clases/sede.php");
        }

        $sede = new _Sede();
        $sede->Id_Sede = $_POST["editarSede"];
        $sede->Nombre_Sede = $_POST["nombre"];
        $sede->Direccion_Sede = $_POST["direccion"];
        $sede->Comuna_Sede = $_POST["comuna"];
        $sede->Region_Sede = $_POST["region"];

        $resul = $sede->editarSede();
        unset($_POST['']);
        if(strlen($resul)==0){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);
    }

    if(isset($_POST["editarProfesor"])){
        if (is_file("clases\profesor.php")){
            require_once("clases\profesor.php");
        }
        else {
            require_once("./clases/profesor.php");
        }

        $profesor = new _Profesor();
        $profesor->Id_Profesor = $_POST["editarProfesor"];
        $profesor->Nombres_Profesor = $_POST["nombres"];
        $profesor->ApePat_Profesor = $_POST["apepat"];
        $profesor->ApeMat_Profesor = $_POST["apemat"];
        $profesor->Telefono_Profesor = $_POST["telefono"];
        $profesor->Email_Profesor = $_POST["email"];
        $profesor->Direccion_Profesor = $_POST["direccion"];

        $resul = $profesor->editarProfesor();
        unset($_POST['']);
        if(strlen($resul)==0){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);        
    }

    if(isset($_POST["editarAlumno"])){
        if (is_file("clases\alumno.php")){
            require_once("clases\alumno.php");
        }
        else {
            require_once("./clases/alumno.php");
        }

        $alumno = new _Alumno();
        $alumno->Id_Alumno = $_POST["editarAlumno"];
        $alumno->Nombres_Alumno = $_POST["nombres"];
        $alumno->ApePat_Alumno = $_POST["apepat"];
        $alumno->ApeMat_Alumno = $_POST["apemat"];
        $alumno->Telefono_Alumno = $_POST["telefono"];
        $alumno->Email_Alumno = $_POST["email"];
        $alumno->Direccion_Alumno = $_POST["direccion"];
        $alumno->FecNacimiento_Alumno = $_POST["fecNacimiento"];
        $alumno->Sexo_Alumno = $_POST["sexo"];
        $alumno->Congregacion_Alumno = $_POST["congregacion"];

        $resul = $alumno->editaAlumno();
        unset($_POST['']);
        if(strlen($resul)==1){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);        
    }

    if(isset($_POST["cargaComunasxRegion"])){
        if (is_file("clases\sede.php")){
            require_once("clases\sede.php");
        }
        else {
            require_once("./clases/sede.php");
        }

        $sede = new _Sede();

        echo $sede->cargaComunasXRegiones($_POST['region']);
        unset($_POST['']);
    }    

    if(isset($_POST['listaClases'])){
        if (is_file("clases\clases.php")){
            require_once("clases\clases.php");
        }
        else {
            require_once("./clases/clases.php");
        }

        $clase = new _Clase();
        $clase->Anio_Clase = $_POST["anio"];
        $clase->Id_Materia = $_POST["materia"];
        $clase->Id_Profesor = $_POST["profesor"];
        $clase->Id_Sede = $_POST["sede"];
        $clase->Id_Curso = $_POST["curso"];
        $resul = $alumno->buscarClases();
        unset($_POST['']);

        $data =  json_decode($resul);
        $no=1;
        $r = count($data->jAlumnos);
            if (count($data->jAlumnos)>1) {
                // Open the table
                echo "<table  class='table table-striped table-hover' id='tablaBusca'>
                <tr>
                <th>#</th>
                <th>Rut</th>
                <th>Nombre</th>
                <th>Teléfono</th>
                <th>Dirección</th>
                </tr>"  ;
        
                // Cycle through the array

                foreach ($data->jAlumnos as $idx => $stand) {
        
                    // Output a row
                    echo "<tr>";
                    echo "<td>$no</td>";
                    echo'<td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                </svg><a href="profile.php?nik='.$stand->Alu_Id.'">'. $alumno->frut($stand->Alu_Rut).'</a></td>';
                    echo "<td>$stand->nombre</td>";
                    echo "<td>$stand->Alu_Telefono</td>";
                    echo "<td>$stand->Alu_Email</td>";
                    echo "</tr>";
                    $no++;
                }
        
                // Close the table
                echo "</table>";
            } 
    }        


?>