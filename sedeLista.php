<?php
	if (is_file("clases\sede.php")){
		require_once("clases\sede.php");
	}
	else {
		require_once("./clases/sede.php");
	}

    $sede = new _Sede();

?>
</script>

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
                    <h2>tabla de sedes</h2>
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
                <div class="tabla-filtro">
                            <button type="button" ddata-bs-toggle="tooltip" data-bs-placement="top"  title="Nueva Sede" class="btn btn-dark" onclick="location.href='sedeAgrega.php'">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16" >
                            <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                            <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"></path>
                            </svg>&nbsp;Nueva Sede
                            </button>
                    <table id="TablaSedes" class="datatable table table-sortable table-striped table-bordered" >
                        <thead class="table-dark">
                            <th>#</th>
                            <th  style="text-align: center; vertical-align: middle; ">Sede </th>
                            <th style="text-align: center; vertical-align: middle; ">Direccion </th>
                            <th style="text-align: center; vertical-align: middle; ">Comuna </svg></th>
                            <th></th>
                            <th></th>
                        </thead>
                        <tbody>
                            <?php 
                                $data = json_decode($sede->listaSedes());
                                if (count($data->JSedes)>0){
                                    $n=1;
                                    foreach ($data->JSedes as $idx => $rs) {
                                        // Output a row
                                        echo "<tr class='table-light   table-hover'>";
                                            echo "<td >$n</td>";
                                            echo "<td>" .$rs->Nombre_Sede  ." </td>";
                                            echo "<td>$rs->Direccion_Sede</td>";
                                            echo "<td>$rs->Comuna_Sede</td>";
                                            echo'<td><a href="SedeEdita.php?nik='.$rs->Id_Sede.'" title="Editar datos" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                            </svg></a></td>';
                                            echo'<td><a href="SedeLista.php?aksi=delete&nik='.$rs->Id_Sede.'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos de '.$rs->Nombre_Sede .'?\')" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
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
            </div>    
    </body>
</html>

<script >
    $(document).ready( function () {
        $('#TablaSedes').DataTable({
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
            "collection": "Colección <span class=\"ui-button-icon-primary ui-icon ui-icon-triangle-1-s\"><\/span>",
            "colvis": "Visibilidad de la columna",
            "colvisRestore": "Restaurar visibilidad",
            "copy": "Copiar",
            "copyKeys": "Presiona ctrl or u2318 + C para copiar los datos de la tabla al portapapeles.<br \/><br \/>Para cancelar, haz click en este mensaje o presiona esc.",
            "copySuccess": {
                "_": "Copió %ds registros al portapapeles",
                "1": "Copió un registro al portapapeles"
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
                "system": "Ocurrió un error de sistema (&lt;a target=\"\\\" rel=\"nofollow\" href=\"\\\"&gt;Más información)."
            },
            "multi": {
                "info": "Los elementos seleccionados contienen diferentes valores para esta entrada. Para editar y configurar todos los elementos de esta entrada con el mismo valor, haga clic o toque aquí, de lo contrario, conservarán sus valores individuales.",
                "noMulti": "Esta entrada se puede editar individualmente, pero no como parte de un grupo.",
                "restore": "Deshacer cambios",
                "title": "Múltiples valores"
            },
            "remove": {
                "button": "Eliminar",
                "confirm": {
                    "_": "¿Está seguro de que desea eliminar %d registros?",
                    "1": "¿Está seguro de que desea eliminar 1 registro?"
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
            "last": "Último",
            "next": "Siguiente",
            "previous": "Anterior"
        },
        "processing": "Procesando...",
        "search": "Buscar:",
        "searchBuilder": {
            "add": "Agregar Condición",
            "button": {
                "_": "Filtros (%d)",
                "0": "Filtrar"
            },
            "clearAll": "Limpiar Todo",
            "condition": "Condición",
            "conditions": {
                "array": {
                    "contains": "Contiene",
                    "empty": "Vacío",
                    "equals": "Igual",
                    "not": "Distinto",
                    "notEmpty": "No vacío",
                    "without": "Sin"
                },
                "date": {
                    "after": "Mayor",
                    "before": "Menor",
                    "between": "Entre",
                    "empty": "Vacío",
                    "equals": "Igual",
                    "not": "Distinto",
                    "notBetween": "No entre",
                    "notEmpty": "No vacío"
                },
                "number": {
                    "between": "Entre",
                    "empty": "Vacío",
                    "equals": "Igual",
                    "gt": "Mayor",
                    "gte": "Mayor o igual",
                    "lt": "Menor",
                    "lte": "Menor o igual",
                    "not": "Distinto",
                    "notBetween": "No entre",
                    "notEmpty": "No vacío"
                },
                "string": {
                    "contains": "Contiene",
                    "empty": "Vacío",
                    "endsWith": "Termina con",
                    "equals": "Igual",
                    "not": "Distinto",
                    "notEmpty": "No vacío",
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
                "_": "Paneles de búsqueda (%d)",
                "0": "Paneles de búsqueda"
            },
            "count": "{total}",
            "countFiltered": "{shown} ({total})",
            "emptyPanes": "Sin paneles de búsqueda",
            "loadMessage": "Cargando paneles de búsqueda...",
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
    } );
</script>
