<?php
	session_start();
	if(!empty($_SESSION['login_user']))
	{
		//header('Location: home.php');
	}
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

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">


	</head>
	<body>
	<!-- <section class="ftco-section"> -->
		<div class="container">
			<div class="row justify-content-center" >
				<div class="col-md-6 text-center mb-5" >
					<img src="IMG/logoIBC.png"  width="200" height="112" >
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div id="Pimagen" name="Pimagen"  class="icon d-flex align-items-center justify-content-center">
		      		<span  class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">ACCESO</h3>
				<form id="FormLogin" class="login-form" method="POST" enctype="multipart/form-data" >
					<div class="form-group">
                        <input type="hidden" name="login" value=1>
						<input id="username" name="username" type="text" class="form-control rounded-left" placeholder="Usuario" required>
					</div>
					<div class="form-group d-flex">
						<input type="password" id="password" name="password" class="form-control rounded-left" placeholder="Contraseña" autocomplete="on" required>
					</div>
					<span id="message"></span>
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
							<input type="submit" class="btn btn-primary rounded submit p-3 px-5" id="Login" name="Login" value="Acceder" >
						</div>
					</div>
				</form>
	        </div>
		</div>
	<!-- </section> -->



	</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script type = "text/javascript"  src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js">   </script>
<!--<script src="login_styles/js/bootstrap.min.js"></script>-->

<script>
$(document).ready(function ajax()
{
	$("#Login").click(function(){
               
            });
    $('#FormLogin').on('submit',
		function(event)
		{
			
			event.preventDefault(); //NO PERMITE QUE LA PAG SE ACTUALICE SOLA
			var username=$("#username").val();
			var password=$("#password").val();
			var dataString = 'username='+username+'&password='+password;
			if($.trim(username).length>0 && $.trim(password).length>0)
			{
				
				$.ajax({
					url:"AJAXCalls.php",
					method:"POST",
					data: new FormData(document.getElementById("FormLogin")), 
					//dataType:"json",
					contentType:false,
					cache:false,
					processData:false,
					beforeSend:function(){
						$('#Pimagen').html("");
						spin = '<div class="spinner-border text-primary" role="status"> <span class="visually-hidden"></span></div>';
						$('#Pimagen').html(spin);
					},
					success: function(datos){
						console.log(datos);
						if(datos)
						{
							//$("body").load("home.php").hide().fadeout(1500).delay(6000);
							$(location).attr('href','home.php');
						}
						else
						{
							//Shake animation effect.
							$('.container').effect('shake',{times:4},500 );
							$('#message').html("<div class='alert alert-danger alert-dismissible fade show' role='alert'></svg>Usuario y/o contraseña incorrectos</div>");
							$('#Pimagen').html("<span  class='fa fa-user-o'></span>");
						}
					},
					error: function(datos) {
						console.log("FALLOO!!!")
						//console.log("error")
                	},  
				

				});
			}
		}
	);

});
</script>