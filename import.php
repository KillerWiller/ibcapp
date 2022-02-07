<?php

//import.php

header('Content-type: text/html; charset=utf-8');
header("Cache-Control: no-cache, must-revalidate");
header ("Pragma: no-cache");

set_time_limit(0);

ob_implicit_flush(1);

session_start();

if(isset($_SESSION['csv_file_name']))
{
    //$connect = new PDO("mysql:host=localhost; dbname=testing", "root", "");

    $file_data = fopen('uploads/' . $_SESSION['csv_file_name'], 'r');

    fgetcsv($file_data);
    $nrows = 0;
    while($row = fgetcsv($file_data)) //RECORRE EL ARCHIVO
    {
        $nrows++;
        $data = array(
        ':first_name' => $row[0],
        ':last_name' => $row[1]
        );
        /* $query = "
        INSERT INTO tbl_sample (first_name, last_name) 
            VALUES (:first_name, :last_name)
        ";

        $statement = $connect->prepare($query);

        $statement->execute($data);*/

        sleep(1);

        if(ob_get_level() > 0)
        {
            ob_end_flush();
        }
    }
    unset($_SESSION['csv_file_name']);
    echo $nrows;
}

?>