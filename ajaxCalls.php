<?php
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

?>