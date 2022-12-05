<?php 

	if (is_file("clases\materia.php")){
		require_once("clases\materia.php");
	}
	else {
		require_once("./clases/materia.php");
	}

    $materia=  new _Materia();

    $RSmateria = json_decode($materia->buscaMateria($_GET["nik"]));
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
		<div id="booking" class="section">
			<div class="section-center">
				<div class="container" style="">
					<div class="row">
						<div class="booking-form">
								<div class="form-header">
									<h2>Editar materia</h2>
								</div>
							<span id="message"></span>
                            <?php foreach ($RSmateria->JMaterias as $idx => $stand) {?>
								<form id="materiaForm" method="POST" enctype="multipart/form-data">
									<div class="row">	
										<div class="col-sm-10">
											<input type="hidden" name="editarMateria" id="editarMateria" value='1'>
											<input type="hidden" name="idMateria" id="idMateria" value="<?php echo $stand->Id_Materia; ?>">
											<div class="form-group form-floating">
												<input type="text" name="nombre" class="form-control" id="nombre" placeholder="Nombre" value="<?php echo $stand->Nombre_Materia; ?>" required>
												<label for="floatingPassword">Nombre</label>
											</div>
										</div>	


									<div class="row g-2">
										<div class="col text-center">
											<span id='state'><input type="submit" name="add" class="btn btn-primary btn-lg" value="Guardar"></span>
											<a href="materiasListar.php" class="btn btn-secondary btn-lg">Volver</a>
										</div>
									</div> 								
								</form>
							<?php } ?>
						</div>
					</div>
				</div>		
			</div>
		</div>

    </body>
</html>

<script>
    $(document).ready(function(){
        $('#materiaForm').on('submit', 
        function(event){
            event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
            spin = '<div class="spinner-border text-primary" role="status"> <span class="visually-hidden">Loading...</span></div>';
            $.ajax(
			{
                url:"AJAXCalls.php",
                method:"POST",
                data: new FormData(document.getElementById("materiaForm")),
                dataType:"json",
                contentType:false,
                cache:false,
                processData:false,
                beforeSend:function(datos){
                    $('#state').html(spin)
				},
				success:function(datos)
				{
					var msg = "";
					console.log(datos);
					if(datos.success) 
					{
						msg = "<div class='alert alert-succsess alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Exelente!</strong> Datos almacenados con exito.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
						$("#materiaForm")[0].reset(); //LIMPIAR EL FORMULARIO
					}
					if(datos.error)
					{
							msg ="<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
					}
					$('#state').html("<input type='submit' name='add' class='btn btn-primary btn-lg' value='Guardar'>");
					$('#message').html(msg);
					},
            });
        });
	});
</script>