<?php
session_start();
if(empty($_SESSION['login_user']))
{
header('Location: index.php');
}
?>
//HTML Code
Welcome to Home Page
<a href="logout.php">Logout</a>