<?php 
    require_once("connect.php");

    class _Clase extends _connect{
        public $id_Clase;
        public $Id_Materia;
        public $Id_Profesor;
        public $Id_Sede;
        public $Id_Curso;
        public $Anio_Clase;
        
        public function __construct(){
            parent::__construct();
        }
    }
?>