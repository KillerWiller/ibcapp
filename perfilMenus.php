<?php  
if (is_file("clases\mmateria.php")){
    require_once("clases\perfiles.php");
}
else {
    require_once("./clases/perfiles.php");
}

$Perfil = new _Perfiles();

if (is_file("clases\menu.php")){
    require_once("clases\menu.php");
}
else {
    require_once("./clases/menu.php");
}

$menu = new _Menu();

$IdPerfil =  $_GET["nik"];

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
                    <h2>asignación de accesos</h2>
                    <h3><?php echo $_GET["nombre"]; ?></h3>
                </div>
                <hr>
                <?php
                    //PARA EL MENU DINAMICO
                    //MENU PRINCIPAL
                    $mainMenu = json_decode($menu->Menu_PerfilHead($IdPerfil)); 
                    $contaC = 1;
                    if (count($mainMenu)>0){
                        echo "<div class='container'>";
                            echo "  <div class='row row-cols-2 row-cols-lg-3'>";
                                foreach ($mainMenu as $idx => $rs) { // CABECERAS DE MENU
                                    if ($contaC==4){ //CONTADOR DE COLUMNAS ANTES DE SATAR UNA FILA
                                        $contaC=1;
                                        echo "</div>";//CIERRO FILA  Y SALTO
                                        echo "  <div class='row row-cols-2 row-cols-lg-3'>";    //CREO OTRA FILA                                  
                                    }
                                        echo "<div class='col'>";
                                            echo "<div class='card' style='width: 18rem;'>";
                                            echo "<ul class='list-group '>";
                                                    echo "<li class='list-group-item list-group-item-primary'>";
                                                        echo "<div class='form-check form-switch '>";
                                                            echo "<input class='form-check-input' type='checkbox' name='menu' id='".$rs->Id_Menu."'>";
                                                            echo "<label class='form-check-label ' for='".$rs->Id_Menu."'>".$rs->Nombre_Menu."</label>";
                                                        echo "</div>";
                                                        echo "</li>";
                                            if($rs->ConHijos){
                                                $subMenu = json_decode($menu->Menu_PerfilSubMenus($IdPerfil,$rs->Id_Menu));
                                                    if (is_countable($subMenu) && count($subMenu)>0){
                                                        //ACA PONER SEPARADOR
                                                        foreach ($subMenu as $idx => $rs2) {//SUBMENUS
                                                            
                                                            if($rs2->Nombre_Menu == "barra"){ //ES UNA BARRA SEPARADORA
                                                                echo "<div class='dropdown-divider'></div>";
                                                            }
                                                            else {
                                                                echo "<li class='list-group-item'>";
                                                                    echo "<div class='form-check form-switch'>";
                                                                        echo "<input class='form-check-input' type='checkbox' name='menu' id='".$rs2->Id_Menu."'>";
                                                                        echo "<label class='form-check-label' for='".$rs2->Id_Menu."'>".$rs2->Nombre_Menu."</label>";
                                                                    echo "</div>";
                                                                echo "</li>";    
                                                            }
                                                        }
                                                        echo "</ul>";
                                                        echo "</div>"; //DIV DE LA COLUNA
                                                    }
                                            }
                                            else{
                                                echo "</ul>";
                                                echo "</div>"; //DIV DE LA COLUNA
                                            }		
                                        echo "</div>";
                                    $contaC++;
                                }
                            echo "</div>"; //FILA    
                        echo "</div>"; //CONTAINER DE GRID
                    }
                ?>
                    </br>                            
                    <div class="row g-2">
                        <div class="col text-center"></div>
                        <div class="col text-center"></div>
                        <div class="col text-center">
                            <span id='state'><input type="buton" name="add" class="btn btn-primary btn-lg" value="Guardar" onclick="alert('click')"></span>
                            <a href="perfilLista.php" class="btn btn-secondary btn-lg">Volver</a>
                        </div>
                    </div>  
                    <span id="message" name="message"></span>
            </div>
        </div>
    </body>
</html>

<script>
      
       $(document).ready(function() {
        
        $(':checkbox').change(function() {
            var estado;
            if(this.checked) { estado = 1   } else{ estado = 0 }
            //ACA CODIGO AJAX PARA CUARDAR EN DB
            event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA

            $.ajax(
            {
                    url:"AJAXCalls.php",
                    method:"POST",
                    data:  { GuardarMenuPerfil:'True',idPerfil:<?php echo $IdPerfil ?>,IdMenu:$(this).attr("id"),Estado:estado},
                    datatype: "html",
                    success:function(data)
                    {
                        if(data) 
                        {
                            msg = "<div class='alert alert-succsess alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Exelente!</strong> Datos almacenados con exito.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                        }
                        else
                        {
                            msg ="<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
                        }
                        $('#message').html(msg);
                    },

                    error: function(data) {
                        $('#message').html("<div class='alert alert-danger alert-dismissible fade show' role='alert'><svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:'><use xlink:href='#check-circle-fill'/></svg><strong>Atencion!</strong> Ocurrio un error desconocido al guardar los datos.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>");
                    },  
            });

          })
        
       });
</script>