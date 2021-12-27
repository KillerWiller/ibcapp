<?php
    require_once("clases\alumno.php");
    $alumno = new _Alumno();
    
    if (isset($_GET["id_alumno"])){ //ISET VERIFICA SI LLEGA LA VARIABLE GET
      $ID_alumno =  $_GET["id_alumno"];
    }
    else{
      exit("ERROR AL CARGAR PAGINA................................................................");
    }

    
    $datosCredencial = $alumno->busca_credencial($ID_alumno);

    $anioactual = date('Y');

    $diferenciaAnios =  $datosCredencial[0]["ingreso"] + $datosCredencial[0]["vigencia"];

		$clase="alert alert-danger";
		if ($anioactual <= $diferenciaAnios){
			$clase="alert alert-success";
			$msge = "Credencial vigente hasta el 03-".$diferenciaAnios;
		}
		else{
			$msge = "Credencial caducada";
		}

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    <title>redIBC</title>
  </head>
  <body>
	<div class="container-sm p-3 mb-2 bg-light text-dark">
    <img src="http://ibc-cce.cl/wp/wp-content/uploads/2021/12/logotipo-IBC-AZUL-CHICO.png" alt="..." class="rounded mx-auto d-block">
      <div class="alert alert-primary" role="alert">
        <?php echo "<h2 class='text-center'>".$datosCredencial[0]["nombre"] ." " .$datosCredencial[0]["apellido"] ."</h3> </br> <h5 class='text-center'>" .$alumno->frut($datosCredencial[0]["rut"]) ."</h3>"; ?>
      </div>
      <div class= <?php echo "'" .$clase ."'";  ?> role='alert'>
          <?php echo "<h6 class='text-center'>".  $msge ."</h6>"; ?>
      </div>
      <div class="alert alert-info" role="alert" >
        <h6 class='text-center'>Más información <a href="mailto:ibc@i-cce.cl" class="alert-link">ibc@i-cce.cl</a>. <a href="https://ibc-cce.cl/" class="alert-link"> www.ibc-cce.cl</a>.</h6>
      </div>
	</div>
  </body>
</html>