<?php
if(isset($_POST['hidden_field']))
{
    $error = '';
    $total_line = '';
    session_start();
    if($_FILES['file']['name'] != '')
    {
        $allowed_extension = array('csv');
        $file_array = explode(".", $_FILES["file"]["name"]);
        $extension = end($file_array);
        if(in_array($extension, $allowed_extension))
        {
            $new_file_name = rand() . '.' . $extension;
            $_SESSION['csv_file_name'] = $new_file_name;
            move_uploaded_file($_FILES['file']['tmp_name'], "uploads/$new_file_name");
            $file_content = file("uploads/$new_file_name", FILE_SKIP_EMPTY_LINES);
            $total_line = count($file_content);
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