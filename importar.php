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

                <div class="class="card" style="width: 50rem;">
                    <h1 class= "display-4" >Alumnos &raquo; Importar</h1> 
                        <hr />
                    <span id="message"></span>
                    <form id="sample_form" method="POST" enctype="multipart/form-data" class="form-horizontal"<script>
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
                                    <input type="file" name="file" id="file" value= "custom-file-imput"  required>
                                </div>
                            </div>                            
                            </br>    
                            <div class="row g-6">
                                <div class="col text-center">
                                    <input type="hidden" name="hidden_field" value="1" />
                                    <input type="submit" name="import" id="import" class="btn btn-primary btn-lg" value="Importar">
                                    <a href="listaAlumnos.php" class="btn btn-secondary btn-lg">Cancelar</a>
                                </div>
                            </div>    
                            </br>                    
                        </div>
                    </form>
                </div>
        </div>
    </body>
</html>

<script>
 
$(document).ready(function(){

    var clear_timer;

    $('#sample_form').on('submit', function(event){
        var IdCurso = $('#curso').val();
        var IdSede = $('#sede').val();
        var anio = $('#anio').val(); 
        $('#message').html('');
        event.preventDefault();
        $.ajax({
            url:"uploadCSV.php",
            method:"POST",
            data: new FormData(this),
            dataType:"json",
            contentType:false,
            cache:false,
            processData:false,
            beforeSend:function(){
                $('#import').attr('disabled','disabled');
                $('#import').val('Importando');
            },
             success:function(data)
            {
               // var total_data = $('#total_data').text(data.total_line);

                if(data.success)
                {

                    $('#file').val('');
                    $('#message').html('<div class="alert alert-success alert-dismissible fade show" role="alert"><svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg><strong>Exelente!</strong>Archivo importado con exito<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>');
                    $('#import').attr('disabled',false);
                    $('#import').val('Importar');
                }
                if(data.error)
                {
                    $('#message').html('<div class="alert alert-danger alert-dismissible fade show" role="alert"><svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg><strong>Error!</strong>' + data.error + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>');
                }
                $('#import').attr('disabled',false);
                $('#import').val('Importar');
            }
        })
    });

    function sleep(milliseconds) {
        const date = Date.now();
        let currentDate = null;
        do {
            currentDate = Date.now();
        } while (currentDate - date < milliseconds);
    }
});
</script>