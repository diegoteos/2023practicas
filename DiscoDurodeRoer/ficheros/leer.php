<?php

$fichero = fopen("ar/datos.txt", "r");

while(!feof($fichero)){
    $linea = fgets($fichero);
    echo $linea . "<br>";
}

fclose($fichero);