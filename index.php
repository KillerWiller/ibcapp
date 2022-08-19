<?php 

	/*if (is_file("clases\curso.php")){
		require_once("clases\curso.php");
	}
	else {
		require_once("./clases/curso.php");
	}*/

	if (is_file("clases\sede.php")){
		require_once("clases\sede.php");
	}
	else {
		require_once("./clases/sede.php");
	}
    
   // $curso =  new _Curso();
    $sede =  new _sede();
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
