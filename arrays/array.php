<?php

$array = array(
    'arroz', 'chocolate', 'maiz'
);

// echo $array[2];


foreach ($array as $valores) {
    if($valores != 'chocolate'){
        echo $valores . "<br>";
    } 
}
