<?php
    require_once("clases\alumno.php");
    $alumno = new _Alumno();

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("header.php");?>
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
					<th></th>
				</tr>
                <?php 
					$no=1;
					$i=0;
					$listado = $alumno->listaFiltro("");
					while($no <= count($listado)){
						echo '
						<tr>
							<td>'.$no.'</td>
							<td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
							<path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
						  </svg><a href="profile.php?nik='.$listado[$i]['Alu_Id'].'">'. $alumno->frut($listado[$i]['Alu_Rut']).'</a></td>
							<td>'.$listado[$i]['Alu_Nombres'].'</td>
							<td>'.$listado[$i]['Alu_ApePaterno'].'</td>
							<td>'.$listado[$i]['Alu_ApeMaterno'].'</td>
							<td>';
						echo '
							</td>
							<td>
								<a href="editAlumno.php?nik='.$listado[$i]['Alu_Id'].'" title="Editar datos" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
								<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
								<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
							  </svg></a>
								<a href="listaAlumnos.php?aksi=delete&nik='.$listado[$i]['Alu_Id'].'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos '.$listado[$i]['Alu_Nombres'].'?\')" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
								<path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
							  </svg></a>
								
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
	</div>
	<center>
		<p>&copy; IBC <?php echo date("Y");?></p
	</center>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>

