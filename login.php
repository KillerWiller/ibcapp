<?php
	session_start();
	if(!empty($_SESSION['login_user']))
	{
		header('Location: home.php');
	}

	if (is_file("clases\usuario.php")){
		require_once("clases\usuario.php");
	}
	else {
		require_once("./clases/usuario.php");
	}

    $usuario=  new _Usuario();
?>

<!doctype html>
<html lang="en">
  <head>
  	<title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="login_styles/css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<img src="IMG/logoIBC.png"  width="200" height="112">
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">ACCESO</h3>
				<form action="#" class="login-form">
					<div class="form-group">
                        <input type="hidden" id="login" value=1>
						<input id="username" type="text" class="form-control rounded-left" placeholder="Usuario" required>
					</div>
					<div class="form-group d-flex">
						<input type="password" id="password" class="form-control rounded-left" placeholder="Contraseña" required>
					</div>
					<div class="form-group d-md-flex">
						<div class="w-50">
							<label class="checkbox-wrap checkbox-primary">Recordar
								<input type="checkbox" checked>
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="w-50 text-md-right">
								<a href="#">Olvide mi contraseña.</a>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary rounded submit p-3 px-5" id="Login">Acceder</button>
						</div>
					</div>
				</form>
	        </div>
		</div>
	</section>



	</body>
</html>
<script src="login_styles/js/jquery.min.js"></script>
<script src="login_styles/js/popper.js"></script>
<script src="login_styles/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() 
{
    $('#login').on('submit',function(event)
    {
        console.log(event.target);
	});

});
</script>