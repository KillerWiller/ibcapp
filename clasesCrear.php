<?php 

	if (is_file("clases\curso.php")){
		require_once("clases\periodo.php");
	}
	else {
		require_once("./clases/periodo.php");
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

    if (is_file("clases\clases.php")){
		require_once("clases\clases.php");
	}
	else {
		require_once("./clases/clases.php");
	}

    $periodo=  new _Periodo();
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
										<?php 	$data =  json_decode($periodo->cargaPeriodos());
												$r = count($data->JPeriodos);
												if (count($data->JPeriodos)>1) {
													foreach ($data->JPeriodos as $idx => $stand) {
														// Output a row
														echo "<option value='$stand->Id_Periodo'>$stand->Nombre_Periodo</option>";
													}
												} 										 
										?>
										</select>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group form-floating">
											<select id="materia" name="materia" class="form-control">
											<option value="0">Materia</option>
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
													if (count($data->JProfesores)>0) {
														foreach ($data->JProfesores as $idx => $stand) {
															// Output a row
															echo "<option value='$stand->Id_Profesor'>" .$stand->Nombres_Profesor ." " .$stand->ApePat_Profesor ." " .$stand->ApeMat_Profesor ."</option>";
														}
													} 										 
											?>
											</select>
										</div>									
								</div>	
								
								<div class="col-sm-10">
									<div class="form-group form-floating">
											<select id="sede" name="sede" class="form-control">
											<option value="0">Sede</option>
											<?php 	$data =  json_decode($sede->listaSedes());
													$r = count($data->JSedes);
													if (count($data->JSedes)>0) {
														foreach ($data->JSedes as $idx => $stand) {
															// Output a row
															echo "<option value='$stand->Id_Sede'>" .strtoupper($stand->Comuna_Sede ."," .$stand->Nombre_Sede) ."</option>";
														}
													} 										 
											?>
											</select>
										</div>									
								</div>								
							</div>
							<div class="row g-2">
								<div class="col text-center">
									<span id="spin"></span>
									<span id='state'><input type="submit" id="agregar" class="btn btn-primary btn-lg" value="Crear Clase" onClick="validar();"></span>
									<a href="clases.Lista.php" class="btn btn-secondary btn-lg">Volver</a>
								</div>
							</div>
						</form>


					</div>
				</div>		
			</div>
		</div>
    </body>
</html>

<script>
	$(document).ready(function(){
		
		$('#claseForm').on('submit', 
            function(event){
			event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
			$.ajax(
			{
				url:"AJAXCalls.php",
				method:"POST",
				data: new FormData(document.getElementById("claseForm")), 
				dataType:"json",
				contentType:false,
				cache:false,
				processData:false,
				beforeSend:function(datos){
					$('#message').css('display','block')
					$('#state').html("");
					spin = '<div class="spinner-border text-primary" role="status"> <span class="visually-hidden">Loading...</span></div>';
					$('#state').html(spin);
				},
				success:function(datos)
				{
					var msg = "";

					if(datos.success) 
					{
						msg = "<div class='alert alert-succsess alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Exelente!</strong> Datos almacenados con exito.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
						$("#claseForm")[0].reset(); //LIMPIAR EL FORMULARIO
					}
					if(datos.error)
					{
							msg ="<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
					}
					$('#state').html("<input type='submit' name='add' class='btn btn-primary btn-lg' value='Guardar'>");
					$('#message').html(msg);
					},
				error: function(datos) {
					$('#state').html("<input type='submit' name='add' class='btn btn-primary btn-lg' value='Guardar'>");
					$('#message').html("<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error desconocido al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>");
				},  
			});

        });
	});

	function validar() {
		var curso = document.getElementById("curso");
		var materia = document.getElementById("materia");
		var profesor = document.getElementById("profesor");
		var sede = document.getElementById("sede");
		curso.setCustomValidity('');
		materia.setCustomValidity('');
		profesor.setCustomValidity('');
		sede.setCustomValidity('');
		if(curso.value<1){
			curso.setCustomValidity('Seleccione un periodo');
		}
		if(materia.value<1){
			materia.setCustomValidity('Seleccione una materia');
		}		

		if(profesor.value<1){
			profesor.setCustomValidity('Seleccione un profesor');
		}	

		if(sede.value<1){
			sede.setCustomValidity('Seleccione una sede');
		}
		
	}
</script>