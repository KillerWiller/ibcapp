<?php 

	if (is_file("clases\curso.php")){
		require_once("clases\profesor.php");
	}
	else {
		require_once("./clases/profesor.php");
	}

    $profesor=  new _profesor();
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
									<h2>agregar profesor</h2>
								</div>
							<span id="message"></span>
							<form id="profesorForm" method="POST" enctype="multipart/form-data">
								<div class="row">	
									<div class="col-sm-6">
										<input type="hidden" name="guardarProfesor" id="guardarProfesor" value='1'>
										<div class="form-group form-floating">
											<input type="text" name="rut" id="rut" class="form-control" pattern="[0-9]{7,8}-[0-9kK]{1}" id="rut" placeholder="RUT" oninput="checkRut(this)" required>
											<label for="floatingPassword">RUT</label>
											
										</div>
									</div>	

									<div class="col-sm-6">
										<div class="form-group form-floating">
											<label for="rut" style="color:#C0C0C0 ">ej: 123456789</label>
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

								<div class="col-sm-10">
									<div class="form-group form-floating">
										<input type="text" name="telefono" class="form-control" id="telefono" placeholder="Tel??fono" >
										<label for="floatingPassword">Tel??fono</label>
									</div>
								</div>	
								
								<div class="col-sm-10">
									<div class="form-group form-floating">
										<input type="email" name="email" class="form-control" id="email" placeholder="Email" required>
										<label for="floatingPassword">Email</label>
									</div>
								</div>		
								<div class="col-sm-12">
									<div class="form-group form-floating">
										<input type="text" name="direccion" class="form-control" id="direccion" placeholder="Direcci??n" >
										<label for="floatingPassword">Direcci??n</label>
									</div>
								</div>															

								<div class="row g-2">
									<div class="col text-center">
										<span id='state'><input type="submit" name="add" class="btn btn-primary btn-lg" value="Guardar"></span>
										<a href="profesorLista.php" class="btn btn-secondary btn-lg">Volver</a>
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
        
        $('#profesorForm').on('submit', 
            function(event){
				event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
                $.ajax(
				{
					url:"AJAXCalls.php",
					method:"POST",
					data: new FormData(document.getElementById("profesorForm")), 
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
							$("#profesorForm")[0].reset();
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
    });

    function checkRut(rut) {
        // Despejar Puntos
        var valor = rut.value.replace('.','');
        // Despejar Gui??n
        valor = valor.replace('-','');
        
        // Aislar Cuerpo y D??gito Verificador
        cuerpo = valor.slice(0,-1);
        dv = valor.slice(-1).toUpperCase();
        
        // Formatear RUN
        rut.value = cuerpo + '-'+ dv
        
        // Si no cumple con el m??nimo ej. (n.nnn.nnn)
        if(cuerpo.length < 7) { rut.setCustomValidity("RUT Incompleto"); return false;}
        
        // Calcular D??gito Verificador
        suma = 0;
        multiplo = 2;
        
        // Para cada d??gito del Cuerpo
        for(i=1;i<=cuerpo.length;i++) {
        
            // Obtener su Producto con el M??ltiplo Correspondiente
            index = multiplo * valor.charAt(cuerpo.length - i);
            
            // Sumar al Contador General
            suma = suma + index;
            
            // Consolidar M??ltiplo dentro del rango [2,7]
            if(multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }
    
        }
        
        // Calcular D??gito Verificador en base al M??dulo 11
        dvEsperado = 11 - (suma % 11);
        
        // Casos Especiales (0 y K)
        dv = (dv == 'K')?10:dv;
        dv = (dv == 0)?11:dv;
        
        // Validar que el Cuerpo coincide con su D??gito Verificador
        if(dvEsperado != dv) { rut.setCustomValidity("RUT Inv??lido"); return false; }
        
        // Si todo sale bien, eliminar errores (decretar que es v??lido)
        rut.setCustomValidity('');
    }    
</script>