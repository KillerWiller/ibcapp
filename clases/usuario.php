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
            $sSQL ="SELECT Id_usuario, CONCAT(Nombre_Usuario,' ',Apellido_Usuario),Usuario  FROM usuarios WHERE Status = 1";
            $result = mysqli_query($this->_connection, $sSQL);

            $output[] = "";
            if(mysqli_num_rows($result) > 0){ // buscar si existe usuario y esta activado
                $output = array();
                session_start(); //si existe cargo las variables en la session
                while($row = mysqli_fetch_assoc($result)) 
                {
                     $output[] = $row;
                }
                return $output;
            }
            else
            {
                echo "Usuario no existe o esta desabilitado.";                    
            }
            $this->cerrar();
            //return json_encode(['JSedes' => $output]);  
        }

    }
    ?>