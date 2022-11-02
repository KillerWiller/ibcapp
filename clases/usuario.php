<?php 
    require_once("connect.php");
    class _Usuario extends _connect{
        public $Id_Usuario;
        public $Nombre_Usuario;
        public $Username;
        public $Exp;

        public function __construct(){
            parent::__construct();
        }

        public function BuscaUsuarioLogin($user,$pass){
            $this->abrir();
            $sSQL ="SELECT Id_usuario, CONCAT(Nombre_Usuario,' ',Apellido_Usuario) as Nombre,Usuario  FROM usuarios WHERE usuario LIKE '$user' AND Pass_usuario LIKE '$pass' AND Status = 1";
            $result = mysqli_query($this->_connection, $sSQL);

            $output[] = "";
            if(mysqli_num_rows($result) > 0){ // buscar si existe usuario y esta activado
                $output = array();
                while($row = mysqli_fetch_assoc($result)) 
                {
                     $output[] = $row;
                }
            }
            $this->cerrar();
            return json_encode(['JUser' => $output]);  
        }

    }
?>