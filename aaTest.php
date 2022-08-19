<?php
    $url='https://api.bsale.cl/v1/documents.json';

    $access_token='9dfbe81c7a1c778bd2ffd0a0c3a36bcabf3f27ec';
	$fecha = 1565365026;

    $estructura_json = array(
		"codeSii" => 41,
		'emissionDate' => $fecha,
		'expirationDate'=> $fecha,
		'declareSii'=> 1,
        'client'=> [
            'code'=> '13264988-K',
            'city'=> 'Santiago',
            'company'=> 'Jaime Vargas',
            'municipality'=> 'La Florida',
            'activity'=> 'Giro de Ejemplo',
            'address'=> 'Jose Miguel Carrera 1340, La Florida Santiago',
            'email'=> 'jmiller@latitud90.com',
            'companyOrPerson'=> 1
        ],
		'details'=> [array(
            'netUnitValue'=> 20,
            'quantity'=> 1,
            'comment'=> '1054-Ignacio Esteban Gonzalez Torres - VDE 1054 Colegio Pedro de Valdivia 2° Medio A Sur -	Programa Educativo',
            'discount'=> 0
        )],
		'payments'=> [array(
		
		'paymentTypeId'=> 10,
		'amount'=> 20,
		'recordDate'=> $fecha
        )]
		
    );


    // Parsea a JSON
    $data =  json_encode( $estructura_json );

    // Inicia cURL
    $session = curl_init($url);


    // Indica a cURL que retorne data
    curl_setopt($session, CURLOPT_RETURNTRANSFER, true);

    // Activa SSL
    //curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, 1);

    // Configura cabeceras
    $headers = array(
        'access_token: ' . $access_token,
        'Accept: application/json',
        'Content-Type: application/json'
    );
    curl_setopt($session, CURLOPT_HTTPHEADER, $headers);

    // Indica que se va ser una petición POST
    curl_setopt($session, CURLOPT_POST, true);

    // Agrega parámetros
    curl_setopt($session, CURLOPT_POSTFIELDS, $data);

    // Ejecuta cURL
    $response = curl_exec($session);
    $code = curl_getinfo($session, CURLINFO_HTTP_CODE);

    // Cierra la sesión cURL
    curl_close($session);

    //Esto es sólo para poder visualizar lo que se está retornando
    print_r($response);
?>