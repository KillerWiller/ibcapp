<?php
    
    $output= "";
    if(isset($_POST["AJXalumno"])){
        require_once("clases\alumno.php");
        $alumno = new _Alumno();
    
        $search = $_POST["AJXalumno"];
        $resul = $alumno->AJXalumnoCurso($search);
        echo $resul;
    }

    if(isset($_POST["AJXCurso"]) && isset($_POST["AJXSede"]) && isset($_POST["AJXAnio"])){
        require_once("clases\curso.php");
        $curso = new _Curso();
    
        $cursx = $_POST["AJXCurso"];
        $sede = $_POST["AJXSede"];
        $anio = $_POST["AJXAnio"];
        $resul = $curso->listaAlumnosCurso($sede,$cursx,$anio);
        echo $resul;
    }    

?>