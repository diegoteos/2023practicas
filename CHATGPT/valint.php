<?php

$numero = "numero 2";
$num = intval($numero);

echo $num;

$string = "La casa tiene 3 habitaciones y cuesta 200000 dólares.";
preg_match_all('/\d+/', $string, $matches);
print_r($matches[0]); // Imprime un array con los números encontrados