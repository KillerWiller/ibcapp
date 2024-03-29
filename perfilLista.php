<?php  
if (is_file("clases\mmateria.php")){
    require_once("clases\perfiles.php");
}
else {
    require_once("./clases/perfiles.php");
}

$Perfil = new _Perfiles();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<?php include("header.php");?>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.css">
  
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.js"></script>
</head>
    <body>
     <div class="container">
	    	<?php include("nav.php");?>
    	</div>
        <div class="container-sm" style="margin-top:5%; align-items: center;">
            <div class="form-header">
                <h2>tabla de perfiles </h2>
            </div>
        </div>
        <hr>

            <div class="container-sm" style="width: 50%;">
                <span>
                    <!-- SI DESEA ELIMINAR -->
                    <?php
                        if(isset($_GET['aksi']) == 'delete'){
                            // escaping, additionally removing everything that could be (html/javascript-) code
                            $response=$Perfil->BorraPerfil($_GET['nik']);
                            if(strlen($response)==0){
                                echo "<div class='alert alert-warning alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Datos eliminados.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                            }
                            else{
                                echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al eliminar los datos. " .$response ."<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                            }
                        }
                    ?>  
                </span>
                <div class="tabla-filtro">
                    <button type="button" ddata-bs-toggle="tooltip" data-bs-placement="top"  title="Nueva Sede" class="btn btn-dark" onclick="location.href='perfilAgrega.php'">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus-fill" viewBox="0 0 16 16" >
                    <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                    <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"></path>
                    </svg>&nbsp;Nuevo Perfil
                    </button>

                    <table  id="Tabla" class="datatable table table-sortable table-striped table-bordered" >
                        <thead class="table-dark">
                            <th>#</th>
                            <th  style="text-align: center; vertical-align: middle; width: 800px;">Código </th>
                            <th  style="text-align: center; vertical-align: middle; width: 800px;">Nombre </th>
                            <th  style="text-align: center; vertical-align: middle; width: 800px;">Descripción </th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </thead>
                        <tbody>
                            <?php 
                                $data = json_decode($Perfil->listaPerfiles());
                                if (count($data->JPerfiles)>0){
                                    $n=1;
                                    foreach ($data->JPerfiles as $idx => $rs) {
                                        // Output a row
                                        echo "<tr class='table-light   table-hover'>";
                                            echo "<td>$n</td>";
                                            echo "<td>" .$rs->Cod_Perfil  ." </td>";
                                            echo "<td>" .$rs->Nombre_Perfil  ." </td>";
                                            echo "<td>" .$rs->Desc_Perfil  ." </td>";
                                            echo '<td><a href="perfilMenus.php?nik='.$rs->Id_Perfil.'&nombre='.$rs->Nombre_Perfil.'"" title="Accesos" class="btn btn-info btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-menu-button-wide-fill" viewBox="0 0 16 16">
                                            <path d="M1.5 0A1.5 1.5 0 0 0 0 1.5v2A1.5 1.5 0 0 0 1.5 5h13A1.5 1.5 0 0 0 16 3.5v-2A1.5 1.5 0 0 0 14.5 0h-13zm1 2h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1zm9.927.427A.25.25 0 0 1 12.604 2h.792a.25.25 0 0 1 .177.427l-.396.396a.25.25 0 0 1-.354 0l-.396-.396zM0 8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V8zm1 3v2a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2H1zm14-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2h14zM2 8.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0 4a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z"/>
                                          </svg></a></td>';
                                            echo'<td ><a href="perfilEdita.php?nik='.$rs->Id_Perfil.'" title="Editar datos" class="btn btn-primary btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                            </svg></a></td>';
                                            echo'<td><a href="perfilLista.php?aksi=delete&nik='.$rs->Id_Perfil .'title="Eliminar" onclick="return confirm(\'Esta seguro de borrar los datos de '.$rs->Nombre_Perfil .'?\')" class="btn btn-danger btn-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
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
<script type="text/javascript" charset="utf8" src="/js/tableSort.js"></script>