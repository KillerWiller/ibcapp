<?php 

	if (is_file("clases\alumno.php")){
		require_once("clases\alumno.php");
	}
	else {
		require_once("./clases/alumno.php");
	}

    $alumno=  new _Alumno();
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
									<h2>agregar alumno</h2>
								</div>
							<span id="message"></span>
							<form id="alumnoForm" method="POST" enctype="multipart/form-data" autocomplete="off">
								<div class="row">	
									<div class="col-sm-6">
										<input type="hidden" name="guardarAlumno" id="guardarAlumno" value='1'>
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
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group form-floating">
											<input type="text" name="telefono" class="form-control" id="telefono" placeholder="Teléfono" >
											<label for="floatingPassword">Teléfono</label>
										</div>
									</div>	
									
									<div class="col-sm-6">
										<div class="form-group form-floating">
											<input type="email" name="email" class="form-control" id="email" placeholder="Email" >
											<label for="floatingPassword">Email</label>
										</div>
									</div>
								</div>		
								<div class="col-sm-12">
									<div class="form-group form-floating">
										<input type="text" name="direccion" class="form-control" id="direccion" placeholder="Dirección" >
										<label for="floatingPassword">Dirección</label>
									</div>
								</div>															
								<div class="col-sm-5">
									<div class="form-group form-floating">
									<input type="date" id="fecNacimiento" name="fecNacimiento" class="form-control" placeholder="Fecha de Nacimiento" >
										<label for="floatingPassword">Fecha de Nacimiento</label>
									</div>
								</div>	
								<div class="row">
									<label for="sexo" style="color:#C0C0C0 ">Sexo</label>
									<div class="col-sm-4">
										<div class="form-group form-floating radio-label">
											<input type="radio" class="form-check-input"  id="sexoM" name="sexo" value="M" checked>&nbsp; Masculino
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group form-floating radio-label">
											<input type="radio" class="form-check-input" id="sexoF" name="sexo" value="F" >&nbsp; Femenino
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="form-group form-floating">
										<input type="text" name="congregacion" class="form-control" id="congregacion" placeholder="Congregación" >
										<label for="floatingPassword">Congregación</label>
									</div>
								</div>
								<div class="row g-2">
									<div class="col text-center">
										<span id='state'><input type="submit" name="add" class="btn btn-primary btn-lg" value="Guardar"></span>
										<a href="alumnoLista.php" class="btn btn-secondary btn-lg">Volver</a>
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
        
        $('#alumnoForm').on('submit', 
            function(event){
				event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
                $.ajax(
				{
					url:"AJAXCalls.php",
					method:"POST",
					data: new FormData(document.getElementById("alumnoForm")), 
					dataType:"json",
					contentType:false,
					cache:false,
					processData:false,
					beforeSend:function(data){
						$('#message').css('display','block')
						$('#state').html("");
						spin = '<div class="spinner-border text-primary" role="status"> <span class="visually-hidden">Loading...</span></div>';
						$('#state').html(spin);
					},
					success:function(data)
					{
						var msg = "";
						if(data.success) 
						{
							msg = "<div class='alert alert-succsess alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Exelente!</strong> Datos almacenados con exito.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
							$("#alumnoForm").trigger("reset");
						}
						if(data.error)
						{
							 msg ="<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
						}
						$('#state').html("<input type='submit' name='add' class='btn btn-primary btn-lg' value='Guardar'>");
						$('#message').html(msg);
					},

					error: function(data) {
						$('#message').html("<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error desconocido al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>");
                	},  
           		 });
		});
    });

    function checkRut(rut) {
        // Despejar Puntos
        var valor = rut.value.replace('.','');
        // Despejar Guión
        valor = valor.replace('-','');
        
        // Aislar Cuerpo y Dígito Verificador
        cuerpo = valor.slice(0,-1);
        dv = valor.slice(-1).toUpperCase();
        
        // Formatear RUN
        rut.value = cuerpo + '-'+ dv
        
        // Si no cumple con el mínimo ej. (n.nnn.nnn)
        if(cuerpo.length < 7) { rut.setCustomValidity("RUT Incompleto"); return false;}
        
        // Calcular Dígito Verificador
        suma = 0;
        multiplo = 2;
        
        // Para cada dígito del Cuerpo
        for(i=1;i<=cuerpo.length;i++) {
        
            // Obtener su Producto con el Múltiplo Correspondiente
            index = multiplo * valor.charAt(cuerpo.length - i);
            
            // Sumar al Contador General
            suma = suma + index;
            
            // Consolidar Múltiplo dentro del rango [2,7]
            if(multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }
    
        }
        
        // Calcular Dígito Verificador en base al Módulo 11
        dvEsperado = 11 - (suma % 11);
        
        // Casos Especiales (0 y K)
        dv = (dv == 'K')?10:dv;
        dv = (dv == 0)?11:dv;
        
        // Validar que el Cuerpo coincide con su Dígito Verificador
        if(dvEsperado != dv) { rut.setCustomValidity("RUT Inválido"); return false; }
        
        // Si todo sale bien, eliminar errores (decretar que es válido)
        rut.setCustomValidity('');
    }    
</script>