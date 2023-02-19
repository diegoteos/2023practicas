<?php

$servidor = 'localhost';
$usuario = 'root';
$contraseña = '';
$db = 'rv';

$connection = mysqli_connect(
    $servidor, $usuario, $contraseña, $db
);

// if ($connection ){
//     echo "la base de datos esta conectada"; 
// }