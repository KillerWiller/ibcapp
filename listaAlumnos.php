<?php
    require_once("clases\alumno.php");
    $alumno = new _Alumno();

?>
<!DOCTYPE html>
<html lang="es">
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lista de alumnos</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style_nav.css" rel="stylesheet">

	<style>
		.content {
			margin-top: 80px;
		}
	</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top ">
		<?php include("nav.php");?>
	</nav>
	<div class="container">
		<div class="content">
			<h2>Lista de alumnos</h2>
			<hr />
			<!-- SI DESEA ELIMINAR -->
			<?php
			if(isset($_GET['aksi']) == 'delete'){
				// escaping, additionally removing everything that could be (html/javascript-) code
				$alumno->borraAlumno($_GET['nik']);

			}
			?>
             <!-- ACA VA EL FILTRO -->
			<br />
			<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
                    <th>#</th>
                    <th>Rut</th>
                    <th>Apellido Paterno</th>
					<th>Apellido Materno</th>
					<th>Nombres</th>
				</tr>
                <?php 
					$no=1;
					$i=0;
					$listado = $alumno->listaFiltro("");
					while($no <= count($listado)){
						echo '
						<tr>
							<td>'.$no.'</td>
							<td><a href="profile.php?nik='.$listado[$i]['Alu_Id'].'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> '. $alumno->frut($listado[$i]['Alu_Rut']).'</a></td>
							<td>'.$listado[$i]['Alu_Nombres'].'</td>
							<td>'.$listado[$i]['Alu_ApePaterno'].'</td>
							<td>'.$listado[$i]['Alu_ApeMaterno'].'</td>
							<td>';
						echo '
							</td>
							<td>
								<a href="editAlumno.php?nik='.$listado[$i]['Alu_Id'].'" title="Editar datos" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
								<a href="listaAlumnos.php?aksi=delete&nik='.$listado[$i]['Alu_Id'].'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos '.$listado[$i]['Alu_Nombres'].'?\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
							</td>
						</tr>
						';
						$i++;   
						$no++;  
					}               
                ?>
			</table>
			</div>
		</div>
	</div><center>
	<p>&copy; Sistemas Web <?php echo date("Y");?></p
		</center>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>

