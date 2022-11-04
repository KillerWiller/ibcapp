<?php
require_once("connect.php");

class _Menu extends _connect{
    public $Id_Menu;
    public $Nombre_Menu;
    Public $Desc_Menu;
    public $Link;
    public $Posiciones;
    public $Padre;

    public function __construct(){
        parent::__construct();
    }

    public function ListarMenus(){
        $this->abrir();
        $sSQL = "SELECT * FROM menus ORDER BY Posicion ASC";
        $result = $this->_connection->query($qSQL);
        if ($result->num_rows > 0) {
            // output data of each row
            $menus = array();
            while($row = mysqli_fetch_array($result)) {
                $menus [] = $row;
            }
        } else {
            echo "Sin resultados";
        }
        $this->cerrar();
        return  $materias;
    }

}

?>