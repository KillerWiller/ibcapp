<?php
require_once("clases\curso.php");

require_once("clases\alumno.php");


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
    session_start();
    if($_FILES['file']['name'] != '')
    {
        $allowed_extension = array('csv');
        $file_array = explode(".", $_FILES["file"]["name"]);
        $extension = end($file_array);
        if(in_array($extension, $allowed_extension))
        {
            if ( isset($_POST["curso"]) && isset($_POST["sede"]) && isset($_POST["anio"])){
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
                    //GUARDA ALUMNO D
                    $alumno = new _Alumno();
                    $msgAlu = $alumno->guardaAlumno($data);
                    $curso =  new _Curso();
                    $msgCurso = $curso->cargaDesdeCsv($data[':rut'],$data[':curso'],$data[':sede'],$data[':anio']);
                    
                    if (strlen($msgAlu) > 0) {
                        $output = array(
                            'error'  => 'Error al guardar los Alumnos'
                            );
                    }                     
                 
                   if (strlen($msgCurso) > 0) {
                        $output = array(
                            'error'  => 'Error al guardar los cursos'
                            );
                   }  
                }
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
    unset($_SESSION['csv_file_rows']);
    unset($_SESSION['csv_file_name']);
    echo json_encode($output);

}
?>