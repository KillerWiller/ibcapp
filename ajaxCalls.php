<?php
    
    $output= "";
    if(isset($_POST["AJXfn"])  && $_POST["AJXfn"]=="cargaCSVAlumnos"){
        if ( isset($_POST["AJXCurso"]) && isset($_POST["AJXSede"]) && isset($_POST["AJXAnio"])){
            require_once("clases\curso.php");
            $curso = new _Curso();
            require_once("clases\alumno.php");
            $alumno = new _Alumno();

            $CSVfile = $_FILES['file']['name'];
            $cursx = $_POST["AJXCurso"];
            $sede = $_POST["AJXSede"];
            $anio = $_POST["AJXAnio"];
            
            $resul = $CSVfile;//$alumno->cargaCSVAlumnos($cursx,$sede,$anio);
            unset($_POST['']);
            echo $resul;
        }
    }

    if(isset($_POST["AJXfn"])  && $_POST["AJXfn"]=="listadoCursoSedeAnio"){
        if ( isset($_POST["AJXCurso"]) && isset($_POST["AJXSede"]) && isset($_POST["AJXAnio"])){
            require_once("clases\curso.php");
            $curso = new _Curso();
            $cursx = $_POST["AJXCurso"];
            $sede = $_POST["AJXSede"];
            $anio = $_POST["AJXAnio"];
            $resul = $curso->listadoCursoSedeAnio($cursx,$sede,$anio);
            unset($_POST['']);
            echo $resul;
        }
    }

    if(isset($_POST["AJXfn"])  && $_POST["AJXfn"]=="borraAlumnoCurso"){
        if(isset($_POST["AJXIidAlumnoCurso"])&& isset($_POST["AJXSede"]) && isset($_POST["AJXCurso"]) && isset($_POST["AJXAnio"])){
            require_once("clases\curso.php");
            $curso = new _Curso();
            $idAlumnoCurso = $_POST["AJXIidAlumnoCurso"];
            $cursx = $_POST["AJXCurso"];
            $sede = $_POST["AJXSede"];
            $anio = $_POST["AJXAnio"];            
            $resul = $curso->borraAlumnoCurso($idAlumnoCurso,$sede,$cursx,$anio);
            unset($_POST['']);
            echo $resul;
        }
    }

    if(isset($_POST["AJXfn"]) && isset($_POST["AJXalumno"]) && $_POST["AJXfn"]=="AJXbuscaAlumno"){
            require_once("clases\alumno.php");
            $alumno = new _Alumno();
            $search = $_POST["AJXalumno"];
            $resul = $alumno->AJXbuscaAlumno($search);
            unset($_POST['']);
            echo $resul;
    }

    if(isset($_POST["AJXfn"]) && $_POST["AJXfn"]=="listaAlumnosCurso"){
        if(isset($_POST["AJXCurso"]) && isset($_POST["AJXSede"]) && isset($_POST["AJXAnio"])){
            require_once("clases\curso.php");
            $curso = new _Curso();
        
            $cursx = $_POST["AJXCurso"];
            $sede = $_POST["AJXSede"];
            $anio = $_POST["AJXAnio"];
            $resul = $curso->listaAlumnosCurso($sede,$cursx,$anio);
            unset($_POST['']);
            echo $resul;
        }    
    }

    if(isset($_POST["AJXfn"])  && $_POST["AJXfn"]=="agregaAlumnoCurso"){
        if (isset($_POST["AJXIdAlumno"])  && isset($_POST["AJXSede"]) && isset($_POST["AJXCurso"]) && isset($_POST["AJXAnio"])){
            require_once("clases\curso.php");
            $curso = new _Curso();
            $alumno = $_POST["AJXIdAlumno"];
            $cursx = $_POST["AJXCurso"];
            $sede = $_POST["AJXSede"];
            $anio = $_POST["AJXAnio"];
            $resul = $curso->agregaAlumnoCurso($alumno,$sede,$cursx,$anio);
            unset($_POST['']);
            echo $resul;
        }
    }
?>