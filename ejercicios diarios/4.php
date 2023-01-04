<?php

echo "This problem was asked by Google.
Given the head of a singly linked list, reverse it in-place. <br/>
Este problema fue solicitado por Google.
Dada la cabeza de una lista enlazada individualmente, inviértala en el lugar. <br/>
";
echo '<br/>';
echo '<br/>';


$frutas = array('manzana', 'mango', 'piña', 'aguacate', 'melon', 'uva');


echo '<br/>';

print_r($frutas);
echo '<br/>';
echo '<br/>';

$contador = count($frutas);

echo '<br/>';
// var_dump($contador);
$frutaRevertida = array();
for ($i = $contador - 1 ; $i >= 0; $i--) { 
    echo $frutas[$i] . '<br/>';
    array_push($frutaRevertida, $frutas[$i]); 
}
echo '<br/>';
echo '<br/>';
print_r($frutaRevertida);

echo '<br/>';
echo '<br/>';


list($uno, $uno2, $uno3, $uno4, $uno5) = $frutaRevertida;

echo "una $uno roja no es igual en sabor a un $uno2 amarillo";