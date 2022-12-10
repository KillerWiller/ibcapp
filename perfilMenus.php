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
                    $mainMenu = json_decode($menu->ListarMenusHead()); 
                    $contaF = 1;
                    $contaC = 1;
                    if (count($mainMenu)>0){
                        echo "<div class='container'>";
                            echo "  <div class='row row-cols-2 row-cols-lg-3'>";
                                foreach ($mainMenu as $idx => $rs) { // CABECERAS DE MENU
                                    if ($contaF<=2){ //CONTADOR DE MENUS ANTES DE SATAR UNA FILA
                                        
                                        echo "<div class='col'>Column </div>";
                                    }
                                    else { //IF DE LA FILA
                                        $contaF=1;
                                        echo "<hr>";
                                    }
                                    $contaF++;
                                }
                            echo "</div>"; //FILA    
                        echo "</div>"; //CONTAINER DE GRID
                    }
                ?>
            </div>
        </div>
    </body>
</html>