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

    public function ListarMenusHead(){
        $this->abrir();
        $sSQL = "SELECT * FROM menus WHERE Padre = 0 ORDER BY Posicion ASC";
        $result = $this->_connection->query($sSQL);
        if ($result->num_rows > 0) {
            // output data of each row
            $menus = array();
            while($row = mysqli_fetch_array($result)) {
                $menus [] = $row;
            }
        }
        $this->cerrar();
        return  json_encode($menus);
    }

    public function ListarSubMenus($IdMenu){
        $this->abrir();
        $sSQL = "SELECT * FROM menus WHERE Padre = $IdMenu ORDER BY Posicion ASC";
        $result = $this->_connection->query($sSQL);
        if ($result->num_rows > 0) {
            // output data of each row
            $Submenus = array();
            while($row = mysqli_fetch_array($result)) {
                $Submenus [] = $row;
            }
        }
        $this->cerrar();
        return  json_encode($Submenus);
    }
}

?>