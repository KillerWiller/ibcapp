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
        $sSQL = "";
    }

}

?>