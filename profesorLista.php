<?php
	if (is_file("clases\alumno.php")){
		require_once("clases\profesor.php");
	}
	else {
		require_once("./clases/profesor.php");
	}

    $profesor = new _Profesor();

?>
</script>

<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("header.php");?>
    <style>
        .resaltar {
        cursor: pointer;
        }
    </style>
</head>
    <body>
		<nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top">
		    <?php include("nav.php");?>
		</nav>
            <div class="container-sm" style="margin-top:5%; align-items: center;">
                <div class="form-header">
                    <h2>tabla de profesores</h2>
                </div>
                <div class="row" >
                    <div class="col-sm-3"></div>
                <!--  <div class="col-sm-6">
                        <div class="input-group ">
                            <span class="input-group-text" id="basic-addon1">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                    <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                                </svg>
                            </span>
                            <input type="text" id="buscar" name="buscar" autocomplete="off" class="form-control" placeholder="Buscar" aria-label="Input group example" aria-describedby="basic-addon1" size="50">
                            <button type="button" class="btn btn-labeled btn-info">Buscar</button>
                        </div>
                    </div>-->
                    <div class="col-sm-3">
                        

                    </div>
                </div>
            </div>
            <hr>
            <div class="container-sm" style="width: 50%;">
                <span>
                    <!-- SI DESEA ELIMINAR -->
                    <?php
                        if(isset($_GET['aksi']) == 'delete'){
                            // escaping, additionally removing everything that could be (html/javascript-) code
                            $response=$profesor->borraProfesor($_GET['nik']);
                            if(strlen($response)==0){
                                echo "<div class='alert alert-warning alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Datos eliminados.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                            }
                            else{
                                echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al eliminar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                            }
                        }
                    ?>  
                </span>
                <table class="table" >
                    <thead class="table-dark">
                        <th>#</th>
                        <th  style="text-align: center; vertical-align: middle; ">Nombre </th>
                        <th style="text-align: center; vertical-align: middle; ">Teléfono </th>
                        <th style="text-align: center; vertical-align: middle; ">Email </svg></th>
                        <th></th>
                        <th>                    <button type="button" ddata-bs-toggle="tooltip" data-bs-placement="top"  title="Agregar Profesor" class="btn btn-primary" onclick="location.href='profesorAgrega.php'" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16" >
                            <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                            <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"></path>
                            </svg>
                            
                        </button></th>
                    </thead>
                    <tbody>
                        <?php 
                            $data = json_decode($profesor->listaProfesores());
                            if (count($data->jProfesores)>0){
                                $n=1;
                                foreach ($data->jProfesores as $idx => $rs) {
                                    // Output a row
                                    echo "<tr class='table-light   table-hover'>";
                                        echo "<td>$n</td>";
                                        echo "<td>" .$rs->Nombres_Profesor ." " .$rs->ApePat_Profesor ." " .$rs->ApeMat_Profesor ." </td>";
                                        echo "<td>$rs->Telefono_Profesor</td>";
                                        echo "<td>$rs->Email_Profesor</td>";
                                        echo'<td><a href="profesorEdita.php?nik='.$rs->Id_Profesor.'" title="Editar datos" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                        </svg></a></td>';
                                        echo'<td><a href="profesorLista.php?aksi=delete&nik='.$rs->Id_Profesor.'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos de '.$rs->Nombres_Profesor ." " .$rs->ApePat_Profesor ." " .$rs->ApeMat_Profesor.'?\')" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
                                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
                                    </svg></a></td>';
                                    echo "</tr>";
                                    $n++;
                                }
                            }
                        ?>
                    </tbody>
                </table> 
            </div>    
    </body>
</html>

<script>
    $(document).ready(() => {
        $('th').each(function(col) {
            $(this).hover(function() {
                $(this).addClass('resaltar');
            }, function() {
                $(this).removeClass('resaltar');
            });

            $(this).click(function() {
                var column = $(this).data('column');
                var order = $(this).data('order');
                arrow ="";
                let registros = $('table').find('tbody > tr').get();

                if (order == 'desc'){
                    $(this).data('order', 'asc')
                    registros = registros.sort((a,b) => a[column] > b[column] ? 1 : -1)
                    arrow = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-short" viewBox="0 0 16 16"> <path fill-rule="evenodd" d="M8 12a.5.5 0 0 0 .5-.5V5.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 5.707V11.5a.5.5 0 0 0 .5.5z"/></svg>';

                    var selectedCol = $("tr").find("th:eq("+col+")");
                    
                }else{
                    $(this).data('order', 'desc')
                    registros = registros.sort((a,b) => a[column] < b[column] ? 1 : -1)
                    arrow = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-short" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L7.5 10.293V4.5A.5.5 0 0 1 8 4z"/></svg>';
                }
                $(this).html($(this).text() + ' ' + arrow); 

                $.each(registros, function(idx,elemento){
                    $('tbody').append(elemento)
                });
            });
        });

    });
</script>