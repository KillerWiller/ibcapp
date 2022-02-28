<?php 

	if (is_file("clases\curso.php")){
		require_once("clases\curso.php");
	}
	else {
		require_once("./clases/curso.php");
	}

	if (is_file("clases\sede.php")){
		require_once("clases\sede.php");
	}
	else {
		require_once("./clases/sede.php");
	}
    
	if (is_file("clases\profesor.php")){
		require_once("clases\profesor.php");
	}
	else {
		require_once("./clases/profesor.php");
	}

    if (is_file("clases\clase.php")){
		require_once("clases\clase.php");
	}
	else {
		require_once("./clases/clase.php");
	}

    $curso =  new _Curso();
    $sede =  new _Sede();
    $profesor = new _Profesor();
    $clase = new _Clase();
?>