<?php
header('Content-type: text/html; charset=utf-8');
header("Cache-Control: no-cache, must-revalidate");
header ("Pragma: no-cache");

set_time_limit(0);
ob_implicit_flush(1);
session_start();

if(isset($_POST['hidden_field']))
{
    $error = '';
    $total_line = '';
  //  session_start();
    if($_FILES['file']['name'] != '')
    {
        $allowed_extension = array('csv');
        $file_array = explode(".", $_FILES["file"]["name"]);
        $extension = end($file_array);
        if(in_array($extension, $allowed_extension))
        {
            $new_file_name = rand() . '.' . $extension;
            move_uploaded_file($_FILES['file']['tmp_name'], "uploads/$new_file_name");
            $file_content = file("uploads/$new_file_name", FILE_SKIP_EMPTY_LINES);
            $total_line = count($file_content);
            $file_data = fopen('uploads/' . $new_file_name, 'r');
            fgetcsv($file_data);

            //DEVOLVER TOTAL LINEN PARA ANCHO DE BARRA
            $output = array(
                'success'  => true,
                'total_line' => ($total_line - 1)
            );

            
            while($row = fgetcsv($file_data)) //RECORRE EL ARCHIVO
            {
                //echo ($fila);                     
                sleep(1);
            //ACA RECORRER EL Archivo
                //ACA INSERTAR CAMPOS A LA DB 
                //DELVOVER JSON ncampo 
                


            }



        }
        else
        {
         $error = 'El archivo debe ser de tipo .CSV';
        }
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
      'total_line' => ($total_line - 1)
     );
    }
   
    echo json_encode($output);

}
?>