<?php 
    require_once("clases\curso.php");
    $curso =  new _Curso();
    require_once("clases\Sede.php");
    $sede =  new _Sede();
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

	  	<div class="container justify-content-center">
			<div class="main-body">
            <form id="cargaCsv" method="POST" enctype="multipart/form-data" class="form" >
                <div class="class="card" style="width: 50rem;">
                <h1 class= "display-4" >Alumnos &raquo; Importar</h1> 
					<hr />
					<div class="form-group">
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
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Archivo</h6>
                            </div>
                            <div class="col-sm-3 text-secondary">
                                <input type="file" name="archivo" class="" id="archivo" value= "custom-file-imput"  required>
                            </div>
                        </div>                            
                        </br>    
                        <div class="row g-6">
                            <div class="col text-center">
                                <input type="submit" name="import" class="btn btn-primary btn-lg" value="Importar">
                                <a href="listaAlumnos.php" class="btn btn-secondary btn-lg">Cancelar</a>
                            </div>
                        </div>    
                        </br>                    
                        <span id="message"></span>
                    </div>
                </div>
            </form>
            <div class="form-group" id="process" style="display:none;">
                <input type="hidden" name="hidden_field" value="1" />
                <div class="progress">
                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                        <span id="process_data">0</span> - <span id="total_data">0</span>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<script>
 
 $(document).ready(function(){

  var clear_timer;

  $('#cargaCsv').on('submit', function(event){
    var curso = $('#curso').val();
    var sede = $('#sede').val();
    var anio = $('#anio').val();   
   $('#message').html('');
   event.preventDefault();
   $.ajax({
    url:"ajaxCalls.php",
    method:"POST",
    data:{AJXfn:"cargaCSVAlumnos",AJXCurso:IdCurso,AJXSede:IdSede,AJXAnio:Anio},
    //data: new FormData(this),
    dataType:"json",
    contentType:false,
    cache:false,
    processData:false,
    beforeSend:function(){
     $('#import').attr('disabled','disabled');
     $('#import').val('Importing');
    },
    success:function(data)
    {
     if(data.success)
     {
      $('#total_data').text(data.total_line);

      $('#message').html('<div class="alert alert-success">Archivo CSV cargado con exitoCSV</div>');
     }
     if(data.error)
     {
      $('#message').html('<div class="alert alert-danger">'+data.error+'</div>');
      $('#import').attr('disabled',false);
      $('#Importar').val('Import');
     }
    }
   })
  });

 });
</script>