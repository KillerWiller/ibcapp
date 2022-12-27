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

    public function Menu_PerfilHead($idPerfil) {
        $this->abrir();
        $sSQL = "SELECT m.Id_Menu, m.Nombre_Menu,m.ConHijos,
        ISNULL((SELECT Id_Perfil_Menu FROM perfiles_menus p WHERE p.Id_Menu = m.Id_Menu AND p.Id_Perfil = $idPerfil)) as estado 
        FROM menus m WHERE m.Padre = 0 ORDER BY m.Posicion ASC";
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

    public function Menu_PerfilSubMenus($idPerfil,$IdMenu){
        $this->abrir();
        $sSQL = "SELECT m.Id_Menu, m.Nombre_Menu,
        ISNULL((SELECT Id_Perfil_Menu FROM perfiles_menus p WHERE p.Id_Menu = m.Id_Menu AND p.Id_Perfil = $idPerfil)) as estado 
        FROM menus m WHERE m.Padre = $IdMenu ORDER BY m.Posicion ASC";
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