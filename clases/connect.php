<?php
    require("config.php");
    class _Connect{
        protected $_connection;

        public function __construct(){
            $this->_connection = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);

            if ($this->_connection->connect_error) {
                echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
                return;
            }
            $this->_connection->set_charset(DB_CHARSET);
        }

        public function abreCnx() {
            if ($this->_connection) {
                $this->_connection = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);

                if ($this->_connection->connect_error) {
                    echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
                    return;
                }
                $this->_connection->set_charset(DB_CHARSET);
            }


        }
        public function abrir(){
            if ($this->_connection -> connect_errno) {
                exit();
            }
            else{
                $this->abreCnx();
            }
        } 
        
        public function cerrar(){
            if ($this->_connection -> connect_errno) {
                exit();
            }
            else{
                $this->_connection->close();
            }

        }
    }

?>