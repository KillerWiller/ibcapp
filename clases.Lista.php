<?php 

	if (is_file("clases\periodo.php")){
		require_once("clases\periodo.php");
	}
	else {
		require_once("./clases/periodo.php");
	}

	if (is_file("clases\sede.php")){
		require_once("clases\sede.php");
	}
	else {
		require_once("./clases/sede.php");
	}
    
	if (is_file("clases\profesor.php")){
		require_once("clases\profesor.php");
	}
	else {
		require_once("./clases/profesor.php");
	}

    if (is_file("clases\materia.php")){
		require_once("clases\materia.php");
	}
	else {
		require_once("./clases/materia.php");
	}

    if (is_file("clases\clase.php")){
		require_once("clases\clase.php");
	}
	else {
		require_once("./clases/clase.php"); 
	}

    $periodo =  new _Periodo();
    $sede =  new _Sede();
    $profesor = new _Profesor();
	$materia = new _Materia();
    $clase = new _Clase();



    $clase = new _Clase();
    $clase->Anio_Clase = 0;
    $clase->Id_Materia = 0;
    $clase->Id_Profesor = 0;
    $clase->Id_Sede = 0;
    $clase->Id_Curso = 0;
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<?php include("header.php");?>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>
</head>
    <body>
		<nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top">
		    <?php include("nav.php");?>
		</nav>
            <div class="container-sm" style="margin-top:5%; align-items: center;">
                <div class="form-header">
                    <h2>clases</h2>
                </div>

               
            </div>
            <hr>
            <div class="container-sm" style="width: 50%;">
                    <span>
                        <!-- SI DESEA ELIMINAR -->
                        <?php
                            if(isset($_GET['aksi']) == 'delete'){
                                // escaping, additionally removing everything that could be (html/javascript-) code
                                $response=$sede->borraSede($_GET['nik']);
                                if(strlen($response)==0){
                                    echo "<div class='alert alert-warning alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Datos eliminados.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                                }
                                else{
                                    echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al eliminar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                                }
                            }
                        ?>  
                    </span>
                
                            <button type="button" ddata-bs-toggle="tooltip" data-bs-placement="top"  title="Nueva Clase" class="btn btn-dark" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2-check-fill" viewBox="0 0 16 16">
                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zm9.954 3H2.545c-.3 0-.545.224-.545.5v1c0 .276.244.5.545.5h10.91c.3 0 .545-.224.545-.5v-1c0-.276-.244-.5-.546-.5zm-2.6 5.854a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                            </svg>&nbsp; Nueva Clase</button>
                        </br>

                <!-- FORM FILTRO                        -->
                <form id="clasesForm" name="clasesForm" method="POST" enctype="multipart/form-data" autocomplete="off">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="form-group ">
                                <input class="form-control" type="hidden" name="filtrarClases" id="filtrarClases" value='1'>
                                <select id="anio" name="anio" class="form-control">
                                    <option value="0">A??o</option>
                                    <?php 	echo $clase->cargaAnios(); ?>
                                </select>
                            </div>
                        </div>	
                        
                        <div class="col-sm-2">
                            <div class="form-group">
                                <select id="periodo" name="periodo" class="form-control">
                                <option value="0">Periodo</option>
                                <?php 	$data =  json_decode($periodo->cargaPeriodos());
                                        $r = count($data->JPeriodos);
                                        if (count($data->JPeriodos)>1) {
                                            foreach ($data->JPeriodos as $idx => $stand) {
                                                // Output a row
                                                echo "<option value='$stand->Id_Periodo'>$stand->Nombre_Periodo</option>";
                                            }
                                        } 										 
                                ?>
                                </select>
                            </div>
                        </div>     
                        
                        <div class="col-sm-3">
                            <div class="form-group ">
                                <select id="materia" name="materia" class="form-control">
                                <option value="0">Materia</option>
                                <?php 	$data =  json_decode($materia->cargaMaterias());
                                        $r = count($data->JMaterias);
                                        if (count($data->JMaterias)>1) {
                                            foreach ($data->JMaterias as $idx => $stand) {
                                                // Output a row
                                                echo "<option value='$stand->Id_Materia'>$stand->Nombre_Materia</option>";
                                            }
                                        } 										 
                                ?>
                                </select>
                            </div>									
                        </div>          
                    </div>
                    </br>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                    <select id="sede" name="sede" class="form-control">
                                    <option value="0">Sede</option>
                                    <?php 	$data =  json_decode($sede->listaSedes());
                                            $r = count($data->JSedes);
                                            if (count($data->JSedes)>0) {
                                                foreach ($data->JSedes as $idx => $stand) {
                                                    // Output a row
                                                    echo "<option value='$stand->Id_Sede'>" .strtoupper($stand->Comuna_Sede ."," .$stand->Nombre_Sede) ."</option>";
                                                }
                                            } 										 
                                    ?>
                                    </select>
                                </div>									
                        </div> 
                        <div class="col-md-4">
                                <span id='state'>
                                    <button type="submit" id="filtrar" class="btn btn-primary btn-lg" value="Filtrar" onClick="validar();">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-filter-circle-fill" viewBox="0 0 16 16">
                                        <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM3.5 5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1 0-1zM5 8.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm2 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 0 1h-1a.5.5 0 0 1-.5-.5z"/>
                                        </svg>&nbsp;
                                        Filtrar
                                     </button>
                                </span>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>                    
                
                            <hr>
                        <div class="tabla-filtro">
                            <table id="TablaClases" class="datatable table table-sortable table-striped table-bordered" >
                                <thead class="table-dark">
                                    <th>#</th>
                                    <th  style="text-align: center; vertical-align: middle; ">A??o </th>
                                    <th style="text-align: center; vertical-align: middle; ">Sede </th>
                                    <th style="text-align: center; vertical-align: middle; ">Periodo </svg></th>
                                    <th style="text-align: center; vertical-align: middle; ">Materia </svg></th>
                                    <th style="text-align: center; vertical-align: middle; ">Profesor </svg></th>
                                    <th></th>
                                    <th></th>
                                </thead>
                                <tbody>
                                    <?php 
                                    $data = json_decode($clase->listaClases());
                                    if (count($data->JClases)>0){
                                            $n=1;
                                            foreach ($data->JClases as $idx => $rs) {
                                                // Output a row
                                                    echo "<tr class='table-light   table-hover'>";
                                                    echo "<td >$n</td>";
                                                    echo "<td>" .$rs->Anio_Clase  ." </td>";
                                                    echo "<td>$rs->Sede</td>";
                                                    echo "<td>$rs->Nombre_Periodo</td>";
                                                    echo "<td>$rs->Nombre_Materia</td>";
                                                    echo "<td>$rs->Profesor</td>";
                                                    echo'<td><a href="SedeEdita.php?nik='.$rs->Id_Clase.'" title="Editar datos" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                    </svg></a></td>';
                                                    echo'<td><a href="SedeLista.php?aksi=delete&nik='.$rs->Id_Clase.'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos de '.$rs->Id_Clase .'?\')" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
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

                </form>
            </div>    
    </body>
</html>

<script >
    $(document).ready( function () {
        $('#clasesForm').on('submit', 
            function(event){
            event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
            spin = '<div class="spinner-border text-primary" role="status"> <span class="visually-hidden">Loading...</span></div>';
            $.ajax(
			{
                url:"AJAXCalls.php",
                method:"POST",
                data:{AJXfn:"filtrarClases"},
                beforeSend:function(datos){
                    console.log("before");
				},                
                success:function(datos)
                {
                    console.log("Success");
                }
            });  
        });
    


        $('#TablaClases').DataTable({
            language: {
                "aria": {
            "sortAscending": ": orden ascendente",
            "sortDescending": ": orden descendente"
        },
        "autoFill": {
            "cancel": "Cancelar",
            "fill": "Llenar todas las celdas con <i>%d&lt;\\\/i&gt;<\/i>",
            "fillHorizontal": "Llenar celdas horizontalmente",
            "fillVertical": "Llenar celdas verticalmente"
        },
        "buttons": {
            "collection": "Colecci??n <span class=\"ui-button-icon-primary ui-icon ui-icon-triangle-1-s\"><\/span>",
            "colvis": "Visibilidad de la columna",
            "colvisRestore": "Restaurar visibilidad",
            "copy": "Copiar",
            "copyKeys": "Presiona ctrl or u2318 + C para copiar los datos de la tabla al portapapeles.<br \/><br \/>Para cancelar, haz click en este mensaje o presiona esc.",
            "copySuccess": {
                "_": "Copi?? %ds registros al portapapeles",
                "1": "Copi?? un registro al portapapeles"
            },
            "copyTitle": "Copiado al portapapeles",
            "csv": "CSV",
            "excel": "Excel",
            "pageLength": {
                "_": "Mostrar %ds registros",
                "-1": "Mostrar todos los registros"
            },
            "pdf": "PDF",
            "print": "Imprimir"
        },
        "datetime": {
            "amPm": [
                "AM",
                "PM"
            ],
            "hours": "Horas",
            "minutes": "Minutos",
            "months": {
                "0": "Enero",
                "1": "Febrero",
                "10": "Noviembre",
                "11": "Diciembre",
                "2": "Marzo",
                "3": "Abril",
                "4": "Mayo",
                "5": "Junio",
                "6": "Julio",
                "7": "Agosto",
                "8": "Septiembre",
                "9": "Octubre"
            },
            "next": "Siguiente",
            "previous": "Anterior",
            "seconds": "Segundos",
            "weekdays": [
                "Dom",
                "Lun",
                "Mar",
                "Mie",
                "Jue",
                "Vie",
                "Sab"
            ]
        },
        "decimal": ",",
        "editor": {
            "close": "Cerrar",
            "create": {
                "button": "Nuevo",
                "submit": "Crear",
                "title": "Crear nuevo registro"
            },
            "edit": {
                "button": "Editar",
                "submit": "Actualizar",
                "title": "Editar registro"
            },
            "error": {
                "system": "Ocurri?? un error de sistema (&lt;a target=\"\\\" rel=\"nofollow\" href=\"\\\"&gt;M??s informaci??n)."
            },
            "multi": {
                "info": "Los elementos seleccionados contienen diferentes valores para esta entrada. Para editar y configurar todos los elementos de esta entrada con el mismo valor, haga clic o toque aqu??, de lo contrario, conservar??n sus valores individuales.",
                "noMulti": "Esta entrada se puede editar individualmente, pero no como parte de un grupo.",
                "restore": "Deshacer cambios",
                "title": "M??ltiples valores"
            },
            "remove": {
                "button": "Eliminar",
                "confirm": {
                    "_": "??Est?? seguro de que desea eliminar %d registros?",
                    "1": "??Est?? seguro de que desea eliminar 1 registro?"
                },
                "submit": "Eliminar",
                "title": "Eliminar registro"
            }
        },
        "emptyTable": "Sin registros",
        "info": "Mostrando _START_ a _END_ de _TOTAL_ registros",
        "infoEmpty": "Mostrando 0 a 0 de 0 registros",
        "infoFiltered": "(filtrado de _MAX_ registros)",
        "infoThousands": ".",
        "lengthMenu": "Mostrar _MENU_ registros",
        "loadingRecords": "Cargando...",
        "paginate": {
            "first": "Primero",
            "last": "??ltimo",
            "next": "Siguiente",
            "previous": "Anterior"
        },
        "processing": "Procesando...",
        "search": "Buscar:",
        "searchBuilder": {
            "add": "Agregar Condici??n",
            "button": {
                "_": "Filtros (%d)",
                "0": "Filtrar"
            },
            "clearAll": "Limpiar Todo",
            "condition": "Condici??n",
            "conditions": {
                "array": {
                    "contains": "Contiene",
                    "empty": "Vac??o",
                    "equals": "Igual",
                    "not": "Distinto",
                    "notEmpty": "No vac??o",
                    "without": "Sin"
                },
                "date": {
                    "after": "Mayor",
                    "before": "Menor",
                    "between": "Entre",
                    "empty": "Vac??o",
                    "equals": "Igual",
                    "not": "Distinto",
                    "notBetween": "No entre",
                    "notEmpty": "No vac??o"
                },
                "number": {
                    "between": "Entre",
                    "empty": "Vac??o",
                    "equals": "Igual",
                    "gt": "Mayor",
                    "gte": "Mayor o igual",
                    "lt": "Menor",
                    "lte": "Menor o igual",
                    "not": "Distinto",
                    "notBetween": "No entre",
                    "notEmpty": "No vac??o"
                },
                "string": {
                    "contains": "Contiene",
                    "empty": "Vac??o",
                    "endsWith": "Termina con",
                    "equals": "Igual",
                    "not": "Distinto",
                    "notEmpty": "No vac??o",
                    "startsWith": "Comienza con"
                }
            },
            "data": "Datos",
            "deleteTitle": "Eliminar regla de filtrado",
            "leftTitle": "Filtros anulados",
            "logicAnd": "Y",
            "logicOr": "O",
            "rightTitle": "Filtro",
            "title": {
                "_": "Filtros (%d)",
                "0": "Filtrar"
            },
            "value": "Valor"
        },
        "searchPanes": {
            "clearMessage": "Limpiar todo",
            "collapse": {
                "_": "Paneles de b??squeda (%d)",
                "0": "Paneles de b??squeda"
            },
            "count": "{total}",
            "countFiltered": "{shown} ({total})",
            "emptyPanes": "Sin paneles de b??squeda",
            "loadMessage": "Cargando paneles de b??squeda...",
            "title": "Filtros activos - %d"
        },
        "select": {
            "cells": {
                "_": "%d celdas seleccionadas",
                "1": "Una celda seleccionada"
            },
            "columns": {
                "_": "%d columnas seleccionadas",
                "1": "Una columna seleccionada"
            },
            "rows": {
                "1": "Una fila seleccionada",
                "_": "%d filas seleccionadas"
            }
        },
        "thousands": ".",
        "zeroRecords": "No se encontraron registros"
            },
        });
    });
        


    function validar(){
        var anio = document.getElementById("anio");
 
        anio.setCustomValidity('');
      
        if(anio.value < 1){
            anio.setCustomValidity('Seleccione un a??o');
        }
    }
   
</script>