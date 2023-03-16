<?php
$cadena="Esto en una cadena de texto con un saltos  de linea \n y aqui sigue el texto";


$cadenalimpia = preg_replace("[\n|\r|\n\r]", "", $cadena);


echo $cadenalimpia;

