<?php
    if(isset($_POST["guardarProfesor"])){
            if (is_file("clases\profesor.php")){
                require_once("clases\profesor.php");
            }
            else {
                require_once("./clases/curso.php");
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
            if($resul){
                $output = array('success'  => true);
            }
            else{
                $output = array('error'  => true);
            }
            echo json_encode($output);
    }


?>