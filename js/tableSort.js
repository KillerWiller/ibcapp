/**
 * Sorts a HTML table.
 * 
 * @param {HTMLTableElement} table The table to sort
 * @param {number} column The index of the column to sort
 * @param {boolean} asc Determines if the sorting will be in ascending
/
 function sortTableByColumn(table, column, asc = true) {
    const dirModifier = asc ? 1 : -1;
    const tBody = table.tBodies[0];
    const rows = Array.from(tBody.querySelectorAll("tr"));

    // Sort each row
    const sortedRows = rows.sort((a, b) => {
        const aColText = a.querySelector(`td:nth-child(${ column + 1 })`).textContent.trim();
        const bColText = b.querySelector(`td:nth-child(${ column + 1 })`).textContent.trim();

        return aColText > bColText ? (1 * dirModifier) : (-1 * dirModifier);
    });

    // Remove all existing TRs from the table
    while (tBody.firstChild) {
        tBody.removeChild(tBody.firstChild);
    }

    // Re-add the newly sorted rows
    tBody.append(...sortedRows);

    // Remember how the column is currently sorted
    table.querySelectorAll("th").forEach(th => th.classList.remove("th-sort-asc", "th-sort-desc"));
    table.querySelector(`th:nth-child(${ column + 1})`).classList.toggle("th-sort-asc", asc);
    table.querySelector(`th:nth-child(${ column + 1})`).classList.toggle("th-sort-desc", !asc);
}

document.querySelectorAll(".table-sortable th").forEach(headerCell => {
    headerCell.addEventListener("click", () => {
        const tableElement = headerCell.parentElement.parentElement.parentElement;
        const headerIndex = Array.prototype.indexOf.call(headerCell.parentElement.children, headerCell);
        const currentIsAscending = headerCell.classList.contains("th-sort-asc");

        sortTableByColumn(tableElement, headerIndex, !currentIsAscending);
    });
});*/

    ///PARA LA PAGINACION ORDEN Y BUSQUEDA DOCUMNENTACION ACA https://datatables.net/
    $(document).ready( function () {
        $('#TablaAlumnos').DataTable({
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
    } );