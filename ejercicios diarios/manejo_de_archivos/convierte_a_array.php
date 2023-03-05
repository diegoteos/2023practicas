<?php
// error_reporting(0);
include 'texto.php';


$datos = explode(PHP_EOL, $texto);

for ($i = 0; $i <= 4; $i++) {
    $datos = "$datos[$i],\n";



    $fichero = fopen("datos.txt", "a");
    fputs($fichero, $fichero);
    fclose($fichero);
}
