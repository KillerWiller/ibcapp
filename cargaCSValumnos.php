<?php
require_once("clases\alumno.php");


session_start();

    $error = '';
    $total_line = '';
    if($_FILES['file']['name'] != '')
    {
        $file_array = explode(".", $_FILES["file"]["name"]);
        $extension = end($file_array);

        $new_file_name = rand() . '.' . $extension;
        $_SESSION['csv_file_name'] = $new_file_name;
        move_uploaded_file($_FILES['file']['tmp_name'], "uploads/$new_file_name");
        $file_content = file("uploads/$new_file_name", FILE_SKIP_EMPTY_LINES);
        $total_line = count($file_content);
        $_SESSION['csv_file_rows'] = $total_line - 1;
        $file_data = fopen('uploads/' . $new_file_name, 'r');
        fgetcsv($file_data);

        //DEVOLVER TOTAL LINEN PARA ANCHO DE BARRA
        $output = array(
            'success'  => true,
            'total_line' => ($total_line - 1)
        );

        /******************************* */
        $vError = "";
        $Linea = 1;
        while($row = fgetcsv($file_data)) //RECORRE EL ARCHIVO
        {
            $data = array(
                ':rut' => $row[0],
                ':don' => $row[1],                  
                ':nombres' => $row[2],
                ':ape_pat' => $row[3],
                ':ape_mat' => $row[4],
                ':telefono' => $row[5],
                ':email' => $row[6],
                ':direccion' => $row[7],
                ':comuna' => $row[8],
                ':fnacimiento' => $row[9],
                ':congregacion' => $row[10],
                ':curso' => $_POST["curso"],
                ':sede' => $_POST["sede"],
                ':anio' => $_POST["anio"]
                
            );
            //VALIDAR 
            //1.- QUE NO EXISTA RUT
            $alumno = new _Alumno();
            $existeAlu = count($alumno->buscaAlumnoRut($data[':rut']));
            if($existeAlu>0){
                $vError = $vError ."</br> -> Linea: ". $Linea ." - El RUT: " .$alumno->frut($data[':rut']) ." ya existe.";
            }
            $Linea++;
        }       
        
        // Use unlink() function to delete a file 
        if (!unlink('uploads/' . $new_file_name)) { 
            $vError = $vError ."No se pudo eliminar el archivo uploads/".$new_file_name; 
        } 
       
        $error = $vError; 
    }  
    else
    {
        $error = 'Please Select File';
    } 
    
    if($error != '')
    {
        $output = array(
        'error'  => $error
        );
    } 
    else
    {
     $output = array(
      'success'  => true,
      'total_line' => ($total_line - 1));
    }

    echo json_encode($output);

    
?>