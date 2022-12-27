<?php 

	if (is_file("clases\materia.php")){
		require_once("clases\perfiles.php");
	}
	else {
		require_once("./clases/perfiles.php");
	}

    $perfil=  new _Perfiles();

    $RSperfil = json_decode($perfil->BuscarPerfil($_GET["nik"]));
?>

<!DOCTYPE html>
<html lang="es">
	<head>
	<?php include("header.php");?>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.css">
  
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>
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
									<h2>editar perfil</h2>
								</div>
							<span id="message"></span>
							<form id="perfilForm" method="POST" enctype="multipart/form-data">
                                <div class="row">	
                                    <div class="col-sm-4">
                                        <input type="hidden" name="editarPerfil" id="editarPerfil" value='1'>
                                        <input type="hidden" name="IdPerfil" id="IdPerfil" value='<?php echo $_GET["nik"]; ?>'>
                                        <div class="form-group form-floating">
                                            <input type="text" name="codigo" class="form-control" id="codigo" placeholder="Código" value="<?php echo $RSperfil->JPerfil[0]->Cod_Perfil ?>" required>
                                            <label for="floatingPassword">Código</label>
                                        </div>
                                    </div>	
                                </div>

								<div class="row">	
                                    <div class="col-sm-10">
                                        <div class="form-group form-floating">
                                            <input type="text" name="nombre" class="form-control" id="nombre" placeholder="Nombre" value="<?php echo strtoupper($RSperfil->JPerfil[0]->Nombre_Perfil); ?>" required>
                                            <label for="floatingPassword">Nombre</label>
                                        </div>
                                    </div>	
                                </div>

                                <div class="row">	
                                    <div class="col-sm-10">
                                        <div class="form-group form-floating">
                                            <input type="text" name="descripcion" class="form-control" id="descripcion" placeholder="Descripcón" value="<?php echo $RSperfil->JPerfil[0]->Desc_Perfil ?>" required>
                                            <label for="floatingPassword">Descripcón</label>
                                        </div>
                                    </div>	
                                </div>

                                <div class="row g-2">
                                    <div class="col text-center">
                                        <span id='state'><input type="submit" name="add" class="btn btn-primary btn-lg" value="Guardar"></span>
                                        <a href="perfilLista.php" class="btn btn-secondary btn-lg">Volver</a>
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
        $('#perfilForm').on('submit', 
        function(event){
            event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
            spin = '<div class="spinner-border text-primary" role="status"> <span class="visually-hidden">Loading...</span></div>';
            $.ajax(
			{
                url:"AJAXCalls.php",
                method:"POST",
                data: new FormData(document.getElementById("perfilForm")),
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
                    console.log(datos)
					if(datos.success) 
					{
						msg = "<div class='alert alert-succsess alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Exelente!</strong> Datos almacenados con exito.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
						$("#perfilForm   ")[0].reset(); //LIMPIAR EL FORMULARIO
					}
					if(datos.error)
					{
						msg ="<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
					}
					$('#state').html("<input type='submit' name='add' class='btn btn-primary btn-lg' value='Guardar'>");
					$('#message').html(msg);
					}
				},                                 
            });
        });
	});
</script>