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
    }

?>