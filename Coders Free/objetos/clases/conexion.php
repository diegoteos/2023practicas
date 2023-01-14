<?php
//error_reporting(0);
$db = 'igss';
$sv = 'localhost';
$us = 'root';
$pass = '';

$conexion = new mysqli($sv, $us, $pass, $db);

$consulta = "SELECT * FROM `carnets` WHERE `nombres` LIKE '%ana%' AND `nombres` LIKE '%patricia%'";
$ejecutar = mysqli_query($conexion, $consulta);
echo '<pre>';
$row = mysqli_fetch_array($ejecutar);
while ( $row = mysqli_fetch_array($ejecutar)) :

    print_r($row);

endwhile;
