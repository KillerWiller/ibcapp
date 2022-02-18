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
    
    $curso =  new _Curso();
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
   
		<div id="booking" class="section">
			<div class="section-center">
				<div class="container" style="">
					<div class="row">
						<div class="booking-form">
								<div class="form-header">
									<h1>agregar profesores</h1>
								</div>
							<form>
								<div class="row">	
									<div class="col-sm-6">
										<div class="form-group form-floating">
											<input type="text" name="rut" class="form-control" id="rut" placeholder="Sin puntos y con -" required>
											<label for="floatingPassword">RUT</label>
										</div>
									</div>	
									<div class="col-sm-7">
										<div class="form-group form-floating">
											<input type="text" name="nombres" class="form-control" id="nombres" placeholder="Nombres" required>
											<label for="floatingPassword">Nombres</label>
										</div>
									</div>			
												
									<div class="col-sm-6">
										<div class="form-group form-floating">
											<input type="text" name="apepat" class="form-control" id="apepat" placeholder="Apellido Paterno" required>
											<label for="floatingPassword">Apellido Paterno</label>
										</div>
									</div>	
									
									<div class="col-sm-6">
										<div class="form-group form-floating">
											<input type="text" name="apemat" class="form-control" id="apemat" placeholder="Apellido Materno" required>
											<label for="floatingPassword">Apellido Materno</label>
										</div>
									</div>
								</div>
								<div class="row g-2">
									<div class="col text-center">
										<input type="submit" name="add" class="btn btn-primary btn-lg" value="Guardar">
										<a href="listaAlumnos.php" class="btn btn-secondary btn-lg">Cancelar</a>
									</div>
								</div> 								
							</form>
						</div>
					</div>
				</div>		
			</div>
		</div>

    </body>
</html>
