<?php



    if(isset($_POST["login"])){
        if(isset($_POST['username']) && isset($_POST['password']))
            {
            if (is_file("clases\usuario.php")){
                require_once("clases\usuario.php");
            }
            else {
                require_once("./clases/usuario.php");
            }
    
            // username and password sent from Form
            $username=$_POST['username']; 
            //Here converting passsword into MD5 encryption. 
            $password=md5($_POST['password']); 
            unset($_POST['']);
                $usuario = new _Usuario();
                $resul = $usuario->BuscaUsuarioLogin($username,$password);
                $data[] =  json_decode($resul);

                // If result matched $username and $password, table row  must be 1 row
                if($data[0][0] != '') //$data[0]->JUser[0]
                {
                    session_start(); //si existe cargo las variables en la session
                    ini_set("session.cookie_lifetime","1200"); //20 MIN
                    ini_set("session.gc_maxlifetime","1200");
                    foreach ($data as $idx => $rs) {
                    $_SESSION['id_user']= $rs[0]->Id_usuario;   //Storing user session value.
                    $_SESSION['nom_user']= $rs[0]->Nombre;
                    $_SESSION['login_user']= $rs[0]->Usuario;
                    }
                    $output = true;//array('success'  => true);
                }
                else{
                    $output = false;//array('error'  => true);    
                }
                
               // echo json_encode($output);
               echo $output;;

        }
    }

    if(isset($_POST["filtrarClases"])){
     $anio  = $_POST["anio"];
     $periodo  = $_POST["periodo"];
     $materia  = $_POST["materia"];
     $sede  = $_POST["sede"];
        if (is_file("clases\clases.php")){
            require_once("clases\clases.php");
        }
        else {
            require_once("./clases/clases.php");
        }

        $clase = new _Clase();
        $clase->Anio_Clase = $anio;
        $sWHERE = " AND c.Anio_Clase = $clase->Anio_Clase " ;


        if($materia >0){$sWHERE .= "  AND c.Id_Materia = " .$_POST["materia"];}
        if($sede >0){$sWHERE .= "  AND c.Id_Sede = " .$_POST["sede"];}
        if($periodo >0){$sWHERE .= "  AND c.Id_Periodo = " .$_POST["periodo"];}

        unset($_POST['']);

        $filtro ="";
        $data  = json_decode($clase->listaClases($sWHERE));
        if (count($data->JClases)>0){
                $n=1;
                foreach ($data->JClases as $idx => $rs) {
                    // Output a row
                    $filtro .= "<tr class='table-light   table-hover'>";
                    $filtro .= "<td >$n</td>";
                    $filtro .= "<td>" .$rs->Anio_Clase  ." </td>";
                    $filtro .= "<td>$rs->Sede</td>";
                    $filtro .= "<td>$rs->Nombre_Periodo</td>";
                    $filtro .= "<td>$rs->Nombre_Materia</td>";
                    $filtro .= "<td>$rs->Profesor</td>";
                    $filtro .='<td><a href="SedeEdita.php?nik='.$rs->Id_Clase.'" title="Editar datos" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                        </svg></a></td>';
                    $filtro .='<td><a href="SedeLista.php?aksi=delete&nik='.$rs->Id_Clase.'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos de '.$rs->Id_Clase .'?\')" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
                    </svg></a></td>';
                    $filtro .= "</tr>";
                    $n++;
                }
            }
            echo $filtro;

    }

    if(isset($_POST["crearClase"])){
        if (is_file("clases\clase.php")){
            require_once("clases\clases.php");
        }
        else {
            require_once("./clases/clases.php");
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

    if(isset($_POST["guardarMateria"])){
        if (is_file("clases\materia.php")){
            require_once("clases\materia.php");
        }
        else {
            require_once("./clases/materia.php");
        }

        $materia = new _Materia();
        $materia->Nombre_Materia = $_POST["nombre"];

        $resul = $materia->guardarMaterias();
        unset($_POST['']);
        if($resul=='success'){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);
    }

    if(isset($_POST["editarMateria"])){
        if (is_file("clases\materia.php")){
            require_once("clases\materia.php");
        }
        else {
            require_once("./clases/materia.php");
        }

        $materia = new _Materia();
        $materia->Id_Materia = $_POST["idMateria"];
        $materia->Nombre_Materia = $_POST["nombre"];

        $resul = $materia->editarMaterias();
        unset($_POST['']);
        $n = strlen($resul);
        if(strlen($resul)>0){
            $output = array('success'  => true);
        }
        else{
            $output = array('error'  => true);
        }
        echo json_encode($output);
    }
?>