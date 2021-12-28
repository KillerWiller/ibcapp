<?php
    require_once("clases\alumno.php");
    require_once("clases\Sede.php");
    $alumno = new _Alumno();
    $sede =  new _Sede();

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Agregar Alumno</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-datepicker.css" rel="stylesheet">
	<link href="css/style_nav.css" rel="stylesheet">
	<style>
		.content {
			margin-top: 80px;
		}
	</style>

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<nav class="navbar navbar-expand-lg  navbar-dark bg-dark sticky-top">
		<?php include("nav.php");?>
	</nav>

	<div class="container">
		<div class="content">
				<hr />
				<h2>Alumnos &raquo; Agregar datos</h2>
					<?php
						if(isset($_POST['add'])){ // SI LE DA A GUARDAR
							$datosAlumno = array();
							$Rut = $alumno->frutAdd($_POST["rut"]);
							$Nombres = $_POST["nombres"];
							$apePat = $_POST["apePat"];
							$apeMat = $_POST["apeMat"];
							$fecNacimiento = date("Y/m/d", strtotime($_POST["fecNacimiento"]));;
							$fono = $_POST["telefono"];
							$email = $_POST["email"];
							$direccion = $_POST["direccion"];
							$comuna = $_POST["comuna"];
							$congregacion = $_POST["congregacion"];
							
							array_push($datosAlumno,$Rut,$Nombres,$apePat,$apeMat,$fecNacimiento,$fono,$email,$direccion,$comuna,$congregacion); 

							echo $alumno->guardaAlumno($datosAlumno);
						}
				?>
				<form class="form" action="" method="post" onsubmit="return validar(event)" >
                    <div class="card" style="width: 50rem;" >
                        <h1 class= "display-4" >Alumnos &raquo; Agregar datos</h1> 
                        <hr />
                        <div class="row g-1">
                            <div class="form-floating col-sm-3">
                                <input type="text" name = "rut" pattern="[0-9]{7,8}-[0-9kK]{1}" class="form-control" id="rut" placeholder="12345678-9"  oninput="checkRut(this)"  required>
                                <label for="rut">RUT</label>
                            </div>
                            <p>sin puntos y con guión</p>
                        </div>
                        </br>
                        <div class="row g-1">
                            <div class="form-floating col-sm-7">
                                <input type="text" name="nombres" class="form-control" id="nombres" placeholder="Nombres" required>
                                <label for="nombres">Nombres</label>
                            </div>
                        </div>    
                        </br>       
                        <div class="row g-2">
                            <div class="form-floating col-sm-5">
                                <input type="text" name="apePat" class="form-control" id="apePat" placeholder="Apellido Paterno" required>
                                <label for="floatingPassword">Apellido Paterno</label>
                            </div>
                            <div class="form-floating col-sm-5">
                                <input type="text" name= "apeMat" class="form-control" id="apeMat" placeholder="Apellido Materno" required>
                                <label for="apePat">Apellido Materno</label>
                            </div>                            
                        </div>  
                        </br>     
                        <div class="row g-2">
                            <div class="form-floating col-sm-3">
                                <input type="date" id="fecNacimiento" name="fecNacimiento" class="form-control">
                            </div>
                            <div class="form-floating col-sm-3">
                                <label for="fecNac">Fecha de Nacimiento</label>
                            </div>
                        </div> 
                        </br>       
                        <div class="row g-2">
                            <div class="form-floating col-sm-5">
                                <input type="text" name="telefono" class="form-control" id="telefono" placeholder="Telefono" required>
                                <label for="floatingPassword">Telefono</label>
                            </div>
                            <div class="form-floating col-sm-5">
                                <input type="email" name= "email" class="form-control" id="apeMat" placeholder="E mail" required>
                                <label for="apePat">E Mail</label>
                            </div>                            
                        </div>   
                        </br>       
                        <div class="row g-2">
                            <div class="form-floating col-sm-10">
                                <input type="text" name="direccion" class="form-control" id="direccion" placeholder="Direccion" >
                                <label for="floatingPassword">Dirección</label>
                            </div>
                        </div> 
                        </br>       
                        <div class="row g-2">
                            <label for="floatingPassword">Comuna</label>
                            <div class="form-floating col-sm-10">
        							<select id="comuna" class="form-control" name="comuna" aria-invalid="false"><option value="ALHUE">ALHUE</option><option value="ALGARROBO">ALGARROBO</option><option value="ALTO BIO BIO">ALTO BIO BIO</option><option value="ALTO DEL CARMEN">ALTO DEL CARMEN</option><option value="ALTO HOSPICIO">ALTO HOSPICIO</option><option value="ANCUD">ANCUD</option><option value="ANDACOLLO">ANDACOLLO</option><option value="ANGOL">ANGOL</option><option value="ANTÁRTICA">ANTÁRTICA</option><option value="ANTOFAGASTA">ANTOFAGASTA</option><option value="ANTUCO">ANTUCO</option><option value="ARAUCO">ARAUCO</option><option value="ARICA">ARICA</option><option value="AYSEN / AISEN">AYSEN / AISEN</option><option value="BUIN">BUIN</option><option value="BULNES">BULNES</option><option value="CABILDO">CABILDO</option><option value="CABO DE HORNOS">CABO DE HORNOS</option><option value="CABRERO">CABRERO</option><option value="CALAMA">CALAMA</option><option value="CALBUCO">CALBUCO</option><option value="CALDERA">CALDERA</option><option value="CALERA DE TANGO">CALERA DE TANGO</option><option value="CALLE LARGA">CALLE LARGA</option><option value="CAMARONES">CAMARONES</option><option value="CAMIÑA">CAMIÑA</option><option value="CANELA">CANELA</option><option value="CAÑETE">CAÑETE</option><option value="CARAHUE">CARAHUE</option><option value="CARTAGENA">CARTAGENA</option><option value="CASABLANCA">CASABLANCA</option><option value="CASTRO">CASTRO</option><option value="CATEMU">CATEMU</option><option value="CAUQUENES">CAUQUENES</option><option value="CERRILLOS">CERRILLOS</option><option value="CERRO NAVIA">CERRO NAVIA</option><option value="CHAITEN">CHAITEN</option><option value="CHANCO">CHANCO</option><option value="CHAÑARAL">CHAÑARAL</option><option value="CHEPICA">CHEPICA</option><option value="CHIGUAYANTE">CHIGUAYANTE</option><option value="CHILE CHICO">CHILE CHICO</option><option value="CHILLAN">CHILLAN</option><option value="CHILLAN VIEJO">CHILLAN VIEJO</option><option value="CHIMBARONGO">CHIMBARONGO</option><option value="CHOLCHOL">CHOLCHOL</option><option value="CHONCHI">CHONCHI</option><option value="CISNES">CISNES</option><option value="COBQUECURA">COBQUECURA</option><option value="COCHAMO">COCHAMO</option><option value="COCHRANE">COCHRANE</option><option value="CODEGUA">CODEGUA</option><option value="COELEMU">COELEMU</option><option value="COIHUECO">COIHUECO</option><option value="COINCO">COINCO</option><option value="COLBUN">COLBUN</option><option value="COLCHANE">COLCHANE</option><option value="COLINA">COLINA</option><option value="COLLIPULLI">COLLIPULLI</option><option value="COLTAUCO">COLTAUCO</option><option value="COMBARBALA">COMBARBALA</option><option value="CONCEPCION">CONCEPCION</option><option value="CONCHALI">CONCHALI</option><option value="CONCON">CONCON</option><option value="CONSTITUCION">CONSTITUCION</option><option value="CONTULMO">CONTULMO</option><option value="COPIAPO">COPIAPO</option><option value="COQUIMBO">COQUIMBO</option><option value="CORONEL">CORONEL</option><option value="CORRAL">CORRAL</option><option value="COYHAIQUE / COIHAIQUE">COYHAIQUE / COIHAIQUE</option><option value="CUNCO">CUNCO</option><option value="CURACAUTIN">CURACAUTIN</option><option value="CURACAVI">CURACAVI</option><option value="CURACO DE VELEZ">CURACO DE VELEZ</option><option value="CURANILAHUE">CURANILAHUE</option><option value="CURARREHUE">CURARREHUE</option><option value="CUREPTO">CUREPTO</option><option value="CURICO">CURICO</option><option value="DALCAHUE">DALCAHUE</option><option value="DIEGO DE ALMAGRO">DIEGO DE ALMAGRO</option><option value="DOÑIHUE">DOÑIHUE</option><option value="EL BOSQUE">EL BOSQUE</option><option value="EL CARMEN">EL CARMEN</option><option value="EL MONTE">EL MONTE</option><option value="EL QUISCO">EL QUISCO</option><option value="EL TABO">EL TABO</option><option value="EMPEDRADO">EMPEDRADO</option><option value="ERCILLA">ERCILLA</option><option value="ESTACION CENTRAL">ESTACION CENTRAL</option><option value="FLORIDA">FLORIDA</option><option value="FREIRE">FREIRE</option><option value="FREIRINA">FREIRINA</option><option value="FRESIA">FRESIA</option><option value="FRUTILLAR">FRUTILLAR</option><option value="FUTALEUFU">FUTALEUFU</option><option value="FUTRONO">FUTRONO</option><option value="GALVARINO">GALVARINO</option><option value="GENERAL LAGOS">GENERAL LAGOS</option><option value="GORBEA">GORBEA</option><option value="GRANEROS">GRANEROS</option><option value="GUAITECAS">GUAITECAS</option><option value="HIJUELAS">HIJUELAS</option><option value="HUALAIHUE">HUALAIHUE</option><option value="HUALAÑE">HUALAÑE</option><option value="HUALPEN">HUALPEN</option><option value="HUALQUI">HUALQUI</option><option value="HUARA">HUARA</option><option value="HUASCO">HUASCO</option><option value="HUECHURABA">HUECHURABA</option><option value="ILLAPEL">ILLAPEL</option><option value="INDEPENDENCIA">INDEPENDENCIA</option><option value="IQUIQUE">IQUIQUE</option><option value="ISLA DE MAIPO">ISLA DE MAIPO</option><option value="ISLA DE PASCUA">ISLA DE PASCUA</option><option value="ISLA JUAN FERNANDEZ">ISLA JUAN FERNANDEZ</option><option value="LA CALERA">LA CALERA</option><option value="LA CISTERNA">LA CISTERNA</option><option value="LA CRUZ">LA CRUZ</option><option value="LA ESTRELLA">LA ESTRELLA</option><option value="LA FLORIDA">LA FLORIDA</option><option value="LA GRANJA">LA GRANJA</option><option value="LA HIGUERA">LA HIGUERA</option><option value="LA LIGUA">LA LIGUA</option><option value="LA PINTANA">LA PINTANA</option><option value="LA REINA">LA REINA</option><option value="LA SERENA">LA SERENA</option><option value="LA UNION">LA UNION</option><option value="LAGO RANCO">LAGO RANCO</option><option value="LAGO VERDE">LAGO VERDE</option><option value="LAGUNA BLANCA">LAGUNA BLANCA</option><option value="LAJA">LAJA</option><option value="LAMPA">LAMPA</option><option value="LANCO">LANCO</option><option value="LAS CABRAS">LAS CABRAS</option><option value="LAS CONDES">LAS CONDES</option><option value="LAUTARO">LAUTARO</option><option value="LEBU">LEBU</option><option value="LICANTEN">LICANTEN</option><option value="LIMACHE">LIMACHE</option><option value="LINARES">LINARES</option><option value="LITUECHE">LITUECHE</option><option value="LLAILLAY / LLAYLLAY">LLAILLAY / LLAYLLAY</option><option value="LLANQUIHUE">LLANQUIHUE</option><option value="LO BARNECHEA">LO BARNECHEA</option><option value="LO ESPEJO">LO ESPEJO</option><option value="LO PRADO">LO PRADO</option><option value="LOLOL">LOLOL</option><option value="LONCOCHE">LONCOCHE</option><option value="LONGAVI">LONGAVI</option><option value="LONQUIMAY">LONQUIMAY</option><option value="LOS ALAMOS">LOS ALAMOS</option><option value="LOS ANDES">LOS ANDES</option><option value="LOS ANGELES">LOS ANGELES</option><option value="LOS LAGOS">LOS LAGOS</option><option value="LOS MUERMOS">LOS MUERMOS</option><option value="LOS SAUCES">LOS SAUCES</option><option value="LOS VILOS">LOS VILOS</option><option value="LOTA">LOTA</option><option value="LUMACO">LUMACO</option><option value="MACHALI">MACHALI</option><option value="MACUL">MACUL</option><option value="MAFIL">MAFIL</option><option value="MAIPU">MAIPU</option><option value="MALLOA">MALLOA</option><option value="MARCHIHUE">MARCHIHUE</option><option value="MARIA ELENA">MARIA ELENA</option><option value="MARIA PINTO">MARIA PINTO</option><option value="MARIQUINA">MARIQUINA</option><option value="MAULE">MAULE</option><option value="MAULLIN">MAULLIN</option><option value="MEJILLONES">MEJILLONES</option><option value="MELIPEUCO">MELIPEUCO</option><option value="MELIPILLA">MELIPILLA</option><option value="MOLINA">MOLINA</option><option value="MONTE PATRIA">MONTE PATRIA</option><option value="MOSTAZAL">MOSTAZAL</option><option value="MULCHEN">MULCHEN</option><option value="NACIMIENTO">NACIMIENTO</option><option value="NANCAGUA">NANCAGUA</option><option value="NATALES">NATALES</option><option value="NAVIDAD">NAVIDAD</option><option value="NEGRETE">NEGRETE</option><option value="NINHUE">NINHUE</option><option value="NOGALES">NOGALES</option><option value="NUEVA IMPERIAL">NUEVA IMPERIAL</option><option value="ÑIQUEN">ÑIQUEN</option><option value="ÑUÑOA">ÑUÑOA</option><option value="O'HIGGINS">O'HIGGINS</option><option value="OLIVAR">OLIVAR</option><option value="OLLAGÜE">OLLAGÜE</option><option value="OLMUE">OLMUE</option><option value="OSORNO">OSORNO</option><option value="OVALLE">OVALLE</option><option value="PADRE HURTADO">PADRE HURTADO</option><option value="PADRE LAS CASAS">PADRE LAS CASAS</option><option value="PAIHUANO">PAIHUANO</option><option value="PAILLACO">PAILLACO</option><option value="PAINE">PAINE</option><option value="PALENA">PALENA</option><option value="PALMILLA">PALMILLA</option><option value="PANGUIPULLI">PANGUIPULLI</option><option value="PANQUEHUE">PANQUEHUE</option><option value="PAPUDO">PAPUDO</option><option value="PAREDONES">PAREDONES</option><option value="PARRAL">PARRAL</option><option value="PEDRO AGUIRRE CERDA">PEDRO AGUIRRE CERDA</option><option value="PELARCO">PELARCO</option><option value="PELLUHUE">PELLUHUE</option><option value="PEMUCO">PEMUCO</option><option value="PENCAHUE">PENCAHUE</option><option value="PENCO">PENCO</option><option value="PEÑAFLOR">PEÑAFLOR</option><option value="PEÑALOLEN">PEÑALOLEN</option><option value="PERALILLO">PERALILLO</option><option value="PERQUENCO">PERQUENCO</option><option value="PETORCA">PETORCA</option><option value="PEUMO">PEUMO</option><option value="PICA">PICA</option><option value="PICHIDEGUA">PICHIDEGUA</option><option value="PICHILEMU">PICHILEMU</option><option value="PINTO">PINTO</option><option value="PIRQUE">PIRQUE</option><option value="PITRUFQUEN">PITRUFQUEN</option><option value="PLACILLA">PLACILLA</option><option value="PORTEZUELO">PORTEZUELO</option><option value="PORVENIR">PORVENIR</option><option value="POZO ALMONTE">POZO ALMONTE</option><option value="PRIMAVERA">PRIMAVERA</option><option value="PROVIDENCIA">PROVIDENCIA</option><option value="PUCHUNCAVI">PUCHUNCAVI</option><option value="PUCON">PUCON</option><option value="PUDAHUEL">PUDAHUEL</option><option value="PUENTE ALTO">PUENTE ALTO</option><option value="PUERTO MONTT">PUERTO MONTT</option><option value="PUERTO OCTAY">PUERTO OCTAY</option><option value="PUERTO VARAS">PUERTO VARAS</option><option value="PUMANQUE">PUMANQUE</option><option value="PUNITAQUI">PUNITAQUI</option><option value="PUNTA ARENAS">PUNTA ARENAS</option><option value="PUQUELDON">PUQUELDON</option><option value="PUREN">PUREN</option><option value="PURRANQUE">PURRANQUE</option><option value="PUTAENDO">PUTAENDO</option><option value="PUTRE">PUTRE</option><option value="PUYEHUE">PUYEHUE</option><option value="QUEILEN">QUEILEN</option><option value="QUELLON">QUELLON</option><option value="QUEMCHI">QUEMCHI</option><option value="QUILACO">QUILACO</option><option value="QUILICURA">QUILICURA</option><option value="QUILLECO">QUILLECO</option><option value="QUILLON">QUILLON</option><option value="QUILLOTA">QUILLOTA</option><option value="QUILPUE">QUILPUE</option><option value="QUINCHAO">QUINCHAO</option><option value="QUINTA DE TILCOCO">QUINTA DE TILCOCO</option><option value="QUINTA NORMAL">QUINTA NORMAL</option><option value="QUINTERO">QUINTERO</option><option value="QUIRIHUE">QUIRIHUE</option><option value="RANCAGUA">RANCAGUA</option><option value="RANQUIL">RANQUIL</option><option value="RAUCO">RAUCO</option><option value="RECOLETA">RECOLETA</option><option value="RENAICO">RENAICO</option><option value="RENCA">RENCA</option><option value="RENGO">RENGO</option><option value="REQUINOA">REQUINOA</option><option value="RETIRO">RETIRO</option><option value="RINCONADA">RINCONADA</option><option value="RIO BUENO">RIO BUENO</option><option value="RIO CLARO">RIO CLARO</option><option value="RIO HURTADO">RIO HURTADO</option><option value="RIO IBAÑEZ">RIO IBAÑEZ</option><option value="RIO NEGRO">RIO NEGRO</option><option value="RIO VERDE">RIO VERDE</option><option value="ROMERAL">ROMERAL</option><option value="SAAVEDRA">SAAVEDRA</option><option value="SAGRADA FAMILIA">SAGRADA FAMILIA</option><option value="SALAMANCA">SALAMANCA</option><option value="SAN ANTONIO">SAN ANTONIO</option><option value="SAN BERNARDO">SAN BERNARDO</option><option value="SAN CARLOS">SAN CARLOS</option><option value="SAN CLEMENTE">SAN CLEMENTE</option><option value="SAN ESTEBAN">SAN ESTEBAN</option><option value="SAN FABIAN">SAN FABIAN</option><option value="SAN FELIPE">SAN FELIPE</option><option value="SAN FERNANDO">SAN FERNANDO</option><option value="SAN GREGORIO">SAN GREGORIO</option><option value="SAN IGNACIO">SAN IGNACIO</option><option value="SAN JAVIER">SAN JAVIER</option><option value="SAN JOAQUIN">SAN JOAQUIN</option><option value="SAN JOSE DE MAIPO">SAN JOSE DE MAIPO</option><option value="SAN JUAN DE LA COSTA">SAN JUAN DE LA COSTA</option><option value="SAN MIGUEL">SAN MIGUEL</option><option value="SAN NICOLAS">SAN NICOLAS</option><option value="SAN PABLO">SAN PABLO</option><option value="SAN PEDRO">SAN PEDRO</option><option value="SAN PEDRO DE ATACAMA">SAN PEDRO DE ATACAMA</option><option value="SAN PEDRO DE LA PAZ">SAN PEDRO DE LA PAZ</option><option value="SAN RAFAEL">SAN RAFAEL</option><option value="SAN RAMON">SAN RAMON</option><option value="SAN ROSENDO">SAN ROSENDO</option><option value="SAN VICENTE">SAN VICENTE</option><option value="SANTA BARBARA">SANTA BARBARA</option><option value="SANTA CRUZ">SANTA CRUZ</option><option value="SANTA JUANA">SANTA JUANA</option><option value="SANTA MARIA">SANTA MARIA</option><option value="SANTIAGO">SANTIAGO</option><option value="SANTO DOMINGO">SANTO DOMINGO</option><option value="SIERRA GORDA">SIERRA GORDA</option><option value="TALAGANTE">TALAGANTE</option><option value="TALCA">TALCA</option><option value="TALCAHUANO">TALCAHUANO</option><option value="TALTAL">TALTAL</option><option value="TEMUCO">TEMUCO</option><option value="TENO">TENO</option><option value="TEODORO SCHMIDT">TEODORO SCHMIDT</option><option value="TIERRA AMARILLA">TIERRA AMARILLA</option><option value="TIL TIL">TIL TIL</option><option value="TIMAUKEL">TIMAUKEL</option><option value="TIRUA">TIRUA</option><option value="TOCOPILLA">TOCOPILLA</option><option value="TOLTEN">TOLTEN</option><option value="TOME">TOME</option><option value="TORRES DEL PAINE">TORRES DEL PAINE</option><option value="TORTEL">TORTEL</option><option value="TRAIGUEN">TRAIGUEN</option><option value="TREGUACO / TREHUACO">TREGUACO / TREHUACO</option><option value="TUCAPEL">TUCAPEL</option><option value="VALDIVIA">VALDIVIA</option><option value="VALLENAR">VALLENAR</option><option value="VALPARAISO">VALPARAISO</option><option value="VICHUQUEN">VICHUQUEN</option><option value="VICTORIA">VICTORIA</option><option value="VICUÑA">VICUÑA</option><option value="VILCUN">VILCUN</option><option value="VILLA ALEGRE">VILLA ALEGRE</option><option value="VILLA ALEMANA">VILLA ALEMANA</option><option value="VILLARRICA">VILLARRICA</option><option value="VIÑA DEL MAR">VIÑA DEL MAR</option><option value="VITACURA">VITACURA</option><option value="YERBAS BUENAS">YERBAS BUENAS</option><option value="YUMBEL">YUMBEL</option><option value="YUNGAY">YUNGAY</option><option value="ZAPALLAR">ZAPALLAR</option></select>
                            </div>
                        </div>                        
                        </br>       
                        <div class="row g-2">
                            <div class="form-floating col-sm-5">
                                <input type="text" name="congregacion" class="form-control" id="congregacion" placeholder="Congregacion" >
                                <label for="floatingPassword">Congregacion</label>
                            </div>
                        </div>     
                        </br>       
                        <div class="row g-2">
                            <div class="col text-center">
                                <input type="submit" name="add" class="btn btn-primary btn-lg" value="Guardar">
                                <a href="listaAlumnos.php" class="btn btn-secondary btn-lg">Cancelar</a>
                            </div>
                        </div>                                                                                                                                                
                    </div>
                </form
		</div>
	</div>
    </br>
</body>
</html>
<script>
    function checkRut(rut) {
        // Despejar Puntos
        var valor = rut.value.replace('.','');
        // Despejar Guión
        valor = valor.replace('-','');
        
        // Aislar Cuerpo y Dígito Verificador
        cuerpo = valor.slice(0,-1);
        dv = valor.slice(-1).toUpperCase();
        
        // Formatear RUN
        rut.value = cuerpo + '-'+ dv
        
        // Si no cumple con el mínimo ej. (n.nnn.nnn)
        if(cuerpo.length < 7) { rut.setCustomValidity("RUT Incompleto"); return false;}
        
        // Calcular Dígito Verificador
        suma = 0;
        multiplo = 2;
        
        // Para cada dígito del Cuerpo
        for(i=1;i<=cuerpo.length;i++) {
        
            // Obtener su Producto con el Múltiplo Correspondiente
            index = multiplo * valor.charAt(cuerpo.length - i);
            
            // Sumar al Contador General
            suma = suma + index;
            
            // Consolidar Múltiplo dentro del rango [2,7]
            if(multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }
    
        }
        
        // Calcular Dígito Verificador en base al Módulo 11
        dvEsperado = 11 - (suma % 11);
        
        // Casos Especiales (0 y K)
        dv = (dv == 'K')?10:dv;
        dv = (dv == 0)?11:dv;
        
        // Validar que el Cuerpo coincide con su Dígito Verificador
        if(dvEsperado != dv) { rut.setCustomValidity("RUT Inválido"); return false; }
        
        // Si todo sale bien, eliminar errores (decretar que es válido)
        rut.setCustomValidity('');
    }

</script>