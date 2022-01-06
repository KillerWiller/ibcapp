<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Agregar Alumno</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-datepicker.css" rel="stylesheet">
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
    <nav class="navbar navbar-default navbar-fixed-top">
        <?php include("nav.php");?>
    </nav>
    <div class="container">
        <div class="main-body">
            <div class="row gutters-sm">
                <div class="col-md-4 mb-3">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex flex-column align-items-center text-center">
                        <img src="https://www.udoi.cl/wp-content/uploads/2016/10/user.png" alt="Admin" class="rounded-circle" width="150">
                        <div class="mt-3">
                          <h4>Nombre Apellido</h4>
                          <p class="text-secondary mb-1">Curso</p>
                          <p class="text-muted font-size-sm">año</p>
                        </div>
                      </div>
                    </div>
                </div>
                  <div class="card mt-3">
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg> Link Credencial</h6>
                        <span class="text-secondary">https://bootdey.com</span>
                      </li>
                      <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                        <div class="card-body">
                            <div class="d-flex flex-column align-items-center text-center">
                              <img src="https://latam.kaspersky.com/content/es-mx/images/repository/isc/2020/9910/a-guide-to-qr-codes-and-how-to-scan-qr-codes-2.png" alt="Admin" class="" width="150">
                            </div>
                          </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-8">
                  <div class="card mb-3">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Nombres</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Kenneth Juan
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Apellidos</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Perez Gonzalez
                        </div>
                      </div>                      
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Email</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          fip@jukmuh.al
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Télefono</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          (239) 816-9029
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Dirección</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Las parras 123
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Comuna</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          Bay Area, San Francisco, CA
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-3">
                          <h6 class="mb-0">Congregación</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                          CCE
                        </div>
                      </div>                      
                      <hr>
                      <div class="row">
                        <div class="col-sm-12">
                          <a class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Edit</a>
                        </div>
                      </div>
                    </div>
                  </div>
    
                  <div class="row gutters-sm">
                    <div class="col-sm-6 mb-3">
                      <div class="card h-100">
                        <div class="card-body">
                          <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Curso: </i> Pentateuco</h6>
                          <small>Año</small>
                            <h6 class="d-flex align-items-center mb-3">2022</h6>
                            <small>Sede</small>
                            <h6 class="d-flex align-items-center mb-3">Casa Central</h6>
                        </div>
                      </div>
                    </div>

                  </div>
                </div>
            </div>
        </div>
    </div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
    <script>
        document.getElementById('fecNac').valueAsDate = new Date();
    </script>

	<script>
        $('.date').datepicker({
            format: 'dd-mm-yyyy',
        })
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
</body>
</html>    |