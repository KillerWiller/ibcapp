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

    if (is_file("clases\materia.php")){
		require_once("clases\materia.php");
	}
	else {
		require_once("./clases/materia.php");
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
	$materia = new _Materia();
    $clase = new _Clase();
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("header.php");?>
</head>
    <body>
		<nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top">
		<?php include("nav.php");?>
		</nav>
   
		<div id="booking" class="section">
			<div class="section-center">
				<div class="container" style="">
					<div class="booking-form">
						<div class="form-header">
							<h2>crear curso</h2>
						</div>
						<span id="message"></span>
						<form id="claseForm" method="POST" enctype="multipart/form-data" autocomplete="off">
							<div class="row">
								<div class="col-sm-3">
									<input type="hidden" name="crearClase" id="crearClase" value='1'>
									<div class="form-group form-floating">
										<input type="number" name="anio" class="form-control" id="anio" value= '<?php echo date("Y"); ?>' width="48"  required>
										<label for="floatingPassword">Año</label>
									</div>
								</div>								
								<div class="col-sm-6">
									<div class="form-group form-floating">
										<select id="curso" name="curso" class="form-control">
										<option value="0">Periodo</option>
										<?php 	$data =  json_decode($curso->cargaCursos());
												$r = count($data->JCursos);
												if (count($data->JCursos)>1) {
													foreach ($data->JCursos as $idx => $stand) {
														// Output a row
														echo "<option value='$stand->Id_Curso'>$stand->Nombre_Curso</option>";
													}
												} 										 
										?>
										</select>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group form-floating">
											<select id="materia" name="materia" class="form-control">
											<option value="0">Contenido</option>
											<?php 	$data =  json_decode($materia->cargaMaterias());
													$r = count($data->JMaterias);
													if (count($data->JMaterias)>1) {
														foreach ($data->JMaterias as $idx => $stand) {
															// Output a row
															echo "<option value='$stand->Id_Materia'>$stand->Nombre_Materia</option>";
														}
													} 										 
											?>
											</select>
										</div>									
								</div>
								<div class="col-sm-6">
									<div class="form-group form-floating">
											<select id="profesor" name="profesor" class="form-control">
											<option value="0">Profesor</option>
											<?php 	$data =  json_decode($profesor->listaProfesores());
													$r = count($data->JProfesores);
													if (count($data->JProfesores)>1) {
														foreach ($data->JProfesores as $idx => $stand) {
															// Output a row
															echo "<option value='$stand->Id_Profesor'>" .$stand->Nombres_Profesor ." " .$stand->ApePat_Profesor ." " .$stand->ApeMat_Profesor ."</option>";
														}
													} 										 
											?>
											</select>
										</div>									
								</div>								
							</div>
						</form>
					</div>
				</div>		
			</div>
		</div>
    </body>
</html>