<?php  session_start();  

	if( $_SESSION["nom_user"] == null ||  $_SESSION["nom_user"]==''){
		header("Location:index.php");
	}

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("header.php");?>
</head>
    <body>
	<div class="container">
		<?php include("nav.php");?>
	</div>
	</body>
</html>