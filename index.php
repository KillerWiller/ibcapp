<?php 
    require_once("clases\curso.php");
    $curso =  new _Curso();
    require_once("clases\Sede.php");
    $sede =  new _Sede();
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Agregar Alumno</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style_nav.css" rel="stylesheet">
	<style>
		.content {
			margin-top: 80px;
		}
	</style>

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>

</head>
    <body>
      <nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top">
      <?php include("nav.php");?>
      </nav>

	  	<div class="container justify-content-center">
			<div class="main-body">
				<h2 class= "display-6" >Alumnos &raquo; Listado</h2> 
				<div class="col-md-8 d-flex align-items-center ">
					<div class="card mb-3">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-5">
									<h6 class="mb-0">Curso</h6>
									<select id="curso" class="form-control" name="curso" aria-invalid="false" width="60">
										<?php $curso->cargaCursos(); ?>
									</select>
								</div>
								<div class="col-sm-5">
									<h6 class="mb-0">Sede</h6>
									<select id="sede" class="form-control" name="sede" aria-invalid="false" width="60">
									<?php $sede->cargaSelecetSedes(); ?>
									</select>
								</div>	
								
								<div class="col-sm-2">
									<h6 class="mb-0">Año</h6>
									<select id="anio" class="form-control" name="anio" aria-invalid="false" width="60">
										<?php $curso->cargaAnio(); ?>
									</select>
								</div>									
							</div>
	</br>
							<div class="row">
								<div class="col-sm-12 text-rigth">
									<input type="submit" id="mostrarLista" name="cargar" class="btn btn-primary btn-sm" value="Ver lista">
								</div>
							</div>							
						</div>
					</div>
				</div>
	</br>
				
			</div>
    	</div>	  
		<div class="container align-items-center ">	
					<div class="table-responsive">
						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<th>#</th>
									<th>Apellido Paterno</th>
									<th>Apellido Materno</th>
									<th>Nombres</th>
									<th>Email</th>
									<th>Teléfono</th>
									<th></th>
								</tr>
							</thead>
							<tbody id="lista">
								
							</tbody>
						</table>
					</div>
				</div>
    </body>
</html>

<script>
	$(document).ready(function(){ 
		function load_lista(IdCurso,IdSede,Anio)
        {
			$.ajax({
					url:"ajaxCalls.php",
					method:"POST",
					data:{AJXfn:"listadoCursoSedeAnio",AJXCurso:IdCurso,AJXSede:IdSede,AJXAnio:Anio},
					success:function(data)
					{
						$('#lista').html(data);
					}
				});
		}
		$("#mostrarLista").click(function() {
            var curso = $('#curso').val();
            var sede = $('#sede').val();
            var anio = $('#anio').val();
            spin = '<div class="text-center"><div class="spinner-border text-primary" role="status"> <span class="visually-hidden">Loading...</span></div></div';
            $('#lista').html(spin);            
            if(anio != '' && curso != '' && sede != '')
            {
                load_lista(curso,sede,anio);
            }
            else
            {
                load_lista();
            }  
		});
	});
</script>