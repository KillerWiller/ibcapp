<?php 

	if (is_file("clases\sede.php")){
		require_once("clases\sede.php");
	}
	else {
		require_once("./clases/sede.php");
	}

    $sede=  new _Sede();
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
					<div class="row">
						<div class="booking-form">
								<div class="form-header">
									<h2>agregar sede</h2>
								</div>
							<span id="message"></span>
							<form id="sedesForm" method="POST" enctype="multipart/form-data">
								<div class="row">	
									<div class="col-sm-6">
										<input type="hidden" name="guardarSede" id="guardarSede" value='1'>
										<div class="form-group form-floating">
											<input type="text" name="nombre" class="form-control" id="nombre" placeholder="Nombre" required>
											<label for="floatingPassword">Nombre</label>
										</div>
									</div>	

								<div class="col-sm-12">
									<div class="form-group form-floating">
										<input type="text" name="direccion" class="form-control" id="direccion" placeholder="Dirección" >
										<label for="floatingPassword">Dirección</label>
									</div>
								</div>															

								<div class="col-sm-7">
									<div class="form-group form-floating">
										<select id="region" name="region" class="form-control">
										<option value="0">REGIÓN</option>
										 <?php echo $sede->cargaRegiones(); ?>
										</select>
									</div>
								</div>					
								
								<div class="col-sm-7">
									<div class="form-group form-floating">
										<select id="comuna" name="comuna" class="form-control">
										<option value="0">Comuna</option>

										</select>
									</div>
								</div>								

								<div class="row g-2">
									<div class="col text-center">
										<span id='state'><input type="submit" name="add" class="btn btn-primary btn-lg" value="Guardar"></span>
										<a href="sedeLista.php" class="btn btn-secondary btn-lg">Volver</a>
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

<script>
    $(document).ready(function(){
		$('#sedesForm').on('submit', 
            function(event){
				event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
                $.ajax(
				{
					url:"AJAXCalls.php",
					method:"POST",
					data: new FormData(document.getElementById("sedesForm")), 
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
							$("#sedesForm")[0].reset();
						}
						if(datos.error)
						{
							 msg ="<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
						}
						$('#state').html("<input type='submit' name='add' class='btn btn-primary btn-lg' value='Guardar'>");
						$('#message').html(msg);
					},

					error: function(datos) {
						$('#message').html("<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error desconocido al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>");
                	},  
            });
		});

		$('#region').change(function(){
			$.ajax({
				type: "POST",
				url:"AJAXCalls.php",
				data:{cargaComunasxRegion:'1',region:$('#region').val()},
                success:function(data)
                {
					$('#comuna').html(data);
                }				
			});
		});
	});
</script>