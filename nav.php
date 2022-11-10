<?php
	if (is_file("clases\menu.php")){
		require_once("clases\menu.php");
	}
	else {
		require_once("./clases/menu.php");
	}

    $menu = new _Menu();

?>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
	<a class="navbar-brand" href="#">
		<img src="img/favIcon.png" alt="" width="50" height="44">
	</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
		<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
			<li class="nav-item">
				<a class="nav-link active" aria-current="page" href="#">Home</a>
			</li>
			<?php
				//PARA EL MENU DINAMICO
				//MENU PRINCIPAL
				$mainMenu = json_decode($menu->ListarMenusHead());
				if (count($mainMenu)>0){
					foreach ($mainMenu as $idx => $rs) {
						if($rs->ConHijos){
							//SUBMENUS
							echo"<li class='nav-item dropdown'>";
							echo"<a class='nav-link dropdown-toggle' href='#' role='button' data-bs-toggle='dropdown' aria-expanded='false'>";
							echo $rs->Nombre_Menu;
							echo "</a>";
							echo "<ul class='dropdown-menu'>";
							$subMenu = json_decode($menu->ListarSubMenus($rs->Id_Menu));
							if (is_countable($subMenu) && count($subMenu)>0){
								foreach ($subMenu as $idx => $rs2) {
									//SUBMENUS
									echo "<li><a class='dropdown-item' href='".$rs2->Link_Menu."'>".$rs2->Nombre_Menu."</a></li>";
								}
							echo "</ul>";
							}
						}
						else{
							echo "<li class='nav-item'>";
							echo "<a class='nav-link'  href='".$rs->Link_Menu."'>".$rs->Nombre_Menu."</a>";
						}					
						echo "</li>";
					}
				}
			?>
		</ul>
			<span class="navbar-text"><?php echo $_SESSION['nom_user']; ?> | <label class="lbl_lnk" onclick="location.href = 'logout.php'">Cerrar Sessión</label>  </span>
    </div>
  </div>
</nav>