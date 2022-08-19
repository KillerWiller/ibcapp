<?php
	if (is_file("clases\alumno.php")){
		require_once("clases\alumno.php");
	}
	else {
		require_once("./clases/alumno.php");
	}


    if (is_file("clases\clase.php")){
		require_once("clases\clase.php");
	}
	else {
		require_once("./clases/clase.php");
	}
    $alumno=  new _Alumno();
    $clase = new _Clase();

?>

<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("header.php");?>
	<link type="text/css" rel="stylesheet" href="css/formStyles.css" />
</head>
    <body>
		<nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top">
		<?php include("nav.php");?>
		</nav>
       </body>
</html>