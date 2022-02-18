<?php
	if (is_file("clases\alumno.php")){
		require_once("clases\profesor.php");
	}
	else {
		require_once("./clases/profesor.php");
	}

    $profesor = new _Profesor();
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
        <div class="container-sm" style="margin-top:5%; align-items: center;">
            <div class="row" >
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group ">
                        <span class="input-group-text" id="basic-addon1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
                            </svg>
                        </span>
                        <input type="text" id="buscar" name="buscar" autocomplete="off" class="form-control" placeholder="Buscar" aria-label="Input group example" aria-describedby="basic-addon1" size="50">
                        <button type="button" class="btn btn-labeled btn-info">Buscar</button>
                    </div>
                </div>
                <div class="col-sm-3">
                    <button type="button" class="btn btn-primary" onclick="location.href='profesorAgrega.php'">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16">
                        <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                        <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"></path>
                        </svg>
                        Agregar Profesor
                    </button>
                </div>
            </div>
        </div>
        <hr>
        <div class="container-sm" style="width: 50%;">
            <table class="table  table-hover">
                <thead class="table-dark">
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Teléfono</th>
                    <th></th>
                    <th></th>
                </thead>
                <tbody>
                    <?php 
                        $data = json_decode($profesor->listaProfesores());
                        if (count($data->jProfesores)>1){
                            $n=1;
                            foreach ($data->jProfesores as $idx => $rs) {
                                // Output a row
                                echo "<tr class='table-light'>";
                                    echo "<td>$n</td>";
                                    echo "<td>" .$rs->Nombres_Profesor ." " .$rs->ApePat_Profesor ." " .$rs->ApeMat_Profesor ."</td>";
                                    echo "<td>$rs->Telefono_Profesor</td>";
                                    echo "<td>$rs->Email_Profesor</td>";
                                    echo'<td><a href="editAlumno.php?nik='.$rs->Id_Profesor.'" title="Editar datos" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                    </svg></a></td>';
                                    echo'<td><a href="listaAlumnos.php?aksi=delete&nik='.$rs->Id_Profesor.'" title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos de '.$rs->Nombres_Profesor ." " .$rs->ApePat_Profesor ." " .$rs->ApeMat_Profesor.'?\')" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
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
