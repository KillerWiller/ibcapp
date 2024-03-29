<?php
 require_once("connect.php");
class _Perfiles extends _connect{
    public $Id_Perfil;
    public $Cod_Perfil;
    Public $Nom_Perfil;
    public $Desc_Perfil;
    public $Menu_Perfil= array();

    public function __construct(){
        parent::__construct();
    }

    public function CrearPerfil(){
        $qSQL = "INSERT INTO perfiles ";
        $qSQL = $qSQL ."(Cod_Perfil,Nombre_Perfil,Desc_Perfil) ";
        $qSQL = $qSQL ." VALUES('";
        $qSQL = $qSQL . strtoupper($this->Cod_Perfil)  ."',";
        $qSQL = $qSQL . "'" .strtoupper($this->Nom_Perfil) ."',";
        $qSQL = $qSQL . "'" .$this->Desc_Perfil  ."')";
        $this->abrir();
        $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
        if($insert){
            $msg = 1;
        }else{
            $msg = 0;
        }
        return $msg;
        $this->cerrar();
    }
    public function HabilitarAccesos($idPerfil,$IdMenu,$Estado){
        // BORRAR TODOS LOS ACCESOS DE
    }

    public function CrearMenusPerfil($IdPerfil){
        $this->abrir();
        $nik = mysqli_real_escape_string($this->_connection,(strip_tags($nik,ENT_QUOTES)));            
        $delete = mysqli_query($this->_connection, "DELETE FROM perfiles_menus WHERE Id_Perfil  = $IdPerfil");
        if($delete){
            $msg = '';
        }else{
            $msg = 'error';
        }
        // $this->cerrar();

        // $this->abrir();
        $qSQL = "SELECT * FROM menus ";
        $result = $this->_connection->query($qSQL);
        if ($result->num_rows > 0) {
            // output data of each row
            $menus = array();
            while($row = mysqli_fetch_array($result)) {
                //*********************** */
                $qSQL = "INSERT INTO perfiles_menus ";
                $qSQL = $qSQL ."(Id_Perfil ,Id_Menu) ";
                $qSQL = $qSQL ." VALUES(";
                $qSQL = $qSQL . $IdPerfil  .",";
                $qSQL = $qSQL . $row["Id_Menu"]  .")";
                $this->abrir();
                $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
                if($insert){
                    $msg =  $msg ."";
                }else{
                    $msg = $msg ."error";
                }
                $this->cerrar();
                //*********************** */
                
            }
        }
        return $msg;
    }

    public  function ListaPerfiles(){
        $this->abrir();
        $qSQL = "SELECT * FROM perfiles ";
        $result = $this->_connection->query($qSQL);

        if ($result->num_rows > 0) {
            // output data of each row
            $perfiles = array();
            while($row = mysqli_fetch_array($result)) {
                $perfiles [] = $row;
            }
        } else {
            echo "Sin resultados";
        }
        $this->cerrar();
        return json_encode(['JPerfiles' => $perfiles]);
    }

    public function BorraPerfil($nik){
        $this->abrir();
        $nik = mysqli_real_escape_string($this->_connection,(strip_tags($nik,ENT_QUOTES)));            
        $delete = mysqli_query($this->_connection, "DELETE FROM  perfiles  WHERE Id_Perfil ='$nik'");
        if($delete){
            $msg = '';
        }else{
            $msg = 'error';
        }
        $this->cerrar();
        return $msg;
    }

    public function BuscarPerfil($Id_Perfil) {
        $this->abrir();
        $sSQL = "SELECT * FROM perfiles WHERE Id_Perfil = $Id_Perfil";
        $result = mysqli_query($this->_connection, $sSQL);

        $output[] = "";
        if(mysqli_num_rows($result) > 0){
            $output = array();
            while($row = mysqli_fetch_assoc($result))
            {
                 $output[] = $row;
            }
        }
        $this->cerrar();
        return json_encode(['JPerfil' => $output]); 
    }

    public function EditaPerfil(){
        $qSQL = "UPDATE perfiles ";
        $qSQL = $qSQL ." SET ";
        $qSQL = $qSQL ."Cod_Perfil = '$this->Cod_Perfil' , ";
        $qSQL = $qSQL ."Nombre_Perfil = '$this->Nom_Perfil', ";
        $qSQL = $qSQL ."Desc_Perfil = '$this->Desc_Perfil' ";
        $qSQL = $qSQL ."WHERE Id_Perfil =  $this->Id_Perfil";
    
        $this->abrir();
        $insert = mysqli_query($this->_connection,$qSQL) or die(mysqli_error());
        if($insert){
            $msg = 1;
        }else{
            $msg = 0;
        }
        $this->cerrar();
        $this->CrearMenusPerfil($this->Id_Perfil);
        return $msg; 
    }
    
}
?>
