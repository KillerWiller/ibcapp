<?php  session_start();  

	if( $_SESSION["nom_user"] == null ||  $_SESSION["nom_user"]==''){
		header("Location:index.php");
	}
	// Máxima duración de sesión activa en hora 30 min
	define( 'MAX_SESSION_TIEMPO', 1800 * 1 );

	// Controla cuando se ha creado y cuando tiempo ha recorrido 
	if ( isset( $_SESSION[ 'ULTIMA_ACTIVIDAD' ] ) && 
		( time() - $_SESSION[ 'ULTIMA_ACTIVIDAD' ] > MAX_SESSION_TIEMPO ) ) {

		// Si ha pasado el tiempo sobre el limite destruye la session
		destruir_session();
	}

	$_SESSION[ 'ULTIMA_ACTIVIDAD' ] = time();

	// Función para destruir y resetear los parámetros de sesión
	function destruir_session() {

		$_SESSION = array();
		if ( ini_get( 'session.use_cookies' ) ) {
			$params = session_get_cookie_params();
			setcookie(
				session_name(),
				'',
				time() - MAX_SESSION_TIEMPO,
				$params[ 'path' ],
				$params[ 'domain' ],
				$params[ 'secure' ],
				$params[ 'httponly' ] );
		}

		@session_destroy();
		header("Location:index.php");
	}
?>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>I.B.C</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
	<!-- <script src="js/bootstrap-datepicker.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


	<link href="css/style_nav.css" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/formStyles.css" />
	<link type="text/css" rel="stylesheet" href="css/Style.css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">

	<style>
		.content {
			margin-top: 80px;
		}

		body {
			background-color: #E5E8E8;
		}

		.lbl_lnk {
			cursor: pointer;
		}
		
	</style>


	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->