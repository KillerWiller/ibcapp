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
    
    <?php
			/*if(isset($_GET['IdAdlumno']) != ''){

			}*/
			?>

</head>
<body>
    <nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top">
		<?php include("nav.php");?>
	</nav>
    <div class="container">
        <div class="main-body">
            <h2>Crear Curso</h2>
            </hr>
            
            <div class="col-md-8">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                              <h6 class="mb-0">Curso</h6>
                            </div>
                            <div class="col-sm-5 text-secondary">
                                <select id="curso" class="form-control" name="curso" aria-invalid="false" width="48">
                                    <?php $curso->cargaCursos(); ?>
                                </select>
                            </div>
                        </div>
                        </br>
                        <div class="row">
                            <div class="col-sm-3">
                              <h6 class="mb-0">Sede</h6>
                            </div>
                            <div class="col-sm-5 text-secondary">
                                <select id="sede" class="form-control" name="sede" aria-invalid="false" width="48">
                                    <?php $sede->cargaSelecetSedes(); ?>
                                </select>
                            </div>
                        </div>
                        </br>                        
                        <div class="row">
                            <div class="col-sm-3">
                              <h6 class="mb-0">Año</h6>
                            </div>
                            <div class="col-sm-3 text-secondary">
                                <input type="number" name="anio" class="form-control" id="anio" value= '<?php echo date("Y"); ?>' width="48"  required>
                            </div>
                        </div>  
                        </br>
                        <div class="row">
                            <div class="col-sm-3 text-rigth">
                                <input type="submit" id="mostrarLista" name="cargar" class="btn btn-primary btn-sm" value="Ver lista">
                            </div>
					</div>                                                 
                    </div>
                </div>
            </div>
             <hr>    
             <p>Seleccione al alumno y agregelo al curso.</p>
             <div class="row gutters-sm">
                <div class="col-md-8">
                    <div class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-9 text-secondary">
                                    <div class="input-group ">
                                        <span class="input-group-text" id="basic-addon1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                                            </svg>
                                        </span>
                                        <input type="text" id="buscar" name="buscar" autocomplete="off" class="form-control" placeholder="Buscar" aria-label="Input group example" aria-describedby="basic-addon1">
                                    </div>
                                </div>                            
                            </div>
                            <div class="table-responsive" id="result"></div>
                            <div  id="alerta"></div>
                        </div>
                    </div>
                </div>
                <!-- LISTA DE ALUMNOS DEL CUERSO -->
                <div class="col-md-8">
                    <div class="card mb-3">
                        <div class="card-body">
                            <h2>Lista del curso</h2>                            
                                <div class="table-responsive" id="lista"></div>
                        </div>
                    </div>
                </div>
        </div>
    </div>


</body>
</html>

<script>
    $(document).ready(function(){

        //PARA BUSCAR ALUMNOS PRESIONAR TECLA
        function cargaBusqueda(alumno)
        {
            $.ajax({
                url:"ajaxCalls.php",
                method:"POST",
                data:{AJXfn:"AJXbuscaAlumno",AJXalumno:alumno},
                success:function(data)
                {
                    $('#result').html(data);
                }
            });
        }
        $('#buscar').keyup(function(){
            var search = $(this).val();
            spin = '<div class="text-center"><div class="spinner-border text-primary" role="status"> <span class="visually-hidden">Loading...</span></div></div>';
                $('#result').html(spin);
            if(search != '')
            {
                cargaBusqueda(search);
            }
            else
            {
                cargaBusqueda();
            }
        });
        //**************************************************************** */
       
        //PARA MOSTRAR LISTA
        function load_lista(IdCurso,IdSede,Anio)
        {
            $.ajax({
                url:"ajaxCalls.php",
                method:"POST",
                data:{AJXfn:"listaAlumnosCurso",AJXCurso:IdCurso,AJXSede:IdSede,AJXAnio:Anio},
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

         //************************************************************************************************ */

	});


    
    //PARA AGREGAR ALMNO AL CURSO|
    (function($) {
        $.fn.agregaAlumnoCurso = function(idAlumno,IdSede,IdCurso,anio) {
            $.ajax({
                url:"ajaxCalls.php",
                method:"POST",
                //agregaAlumnoCurso ES UN FLAG PARA SABER A QUE FUNCION LLAMAR EN LA CLASE PHP
                data:{AJXfn:'agregaAlumnoCurso',AJXIdAlumno:idAlumno,AJXSede:IdSede,AJXCurso:IdCurso,AJXAnio:anio},
                success:function(data)
                {
                    if(data.length > 0){
                        $('#lista').html(data);
                    }
                    else{
                        var sAlert = "<div class='alert alert-warning alert-dismissible fade show' role='alert'><svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-exclamation-triangle-fill' viewBox='0 0 16 16'>				<path d='M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z'/>	</svg>		<strong>&nbsp;Atención!</strong> Este alumno ya s encuentra en la lista.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                        $('#alerta').html(sAlert);
                    }
                   
                }
            });
        };
    })(jQuery);
    //FUNCION APARTE PARA CAPTURAR CLICK DE BOTON EN FILA
    function agregaACurso(clicked_id)
         {
            document.getElementById('buscar').value = "";
            document.getElementById('result').innerHTML = "";
            document.getElementById("buscar").focus();
            var curso = $('#curso').val();
            var sede = $('#sede').val();
            var anio = $('#anio').val();
            $(this).agregaAlumnoCurso(clicked_id,sede,curso,anio);
         } 
    //***************************************************************************** */
</script>