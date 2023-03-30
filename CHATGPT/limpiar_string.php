<?php

function eliminarAsteriscos($cadena) {
    $cadena = str_replace("*", "", $cadena);
    $cadena = str_replace("/", "", $cadena);
    $cadena = str_replace(";", "", $cadena);
    return $cadena;
  }

$cadenaConAsteriscos = "Esta es una *cadena* con *asteriscos*.";
$punto = eliminarAsteriscos($punto = "Esta es ;una *cadena* con ;*asteriscos;*.");
$slash = eliminarAsteriscos($slash = "Esta /es / una *cadena* con *asteriscos*.");
$cadenaSinAsteriscos = eliminarAsteriscos($cadenaConAsteriscos);
echo $cadenaSinAsteriscos . '<br />';
echo $punto . '<br />';
echo $slash . '<br />';