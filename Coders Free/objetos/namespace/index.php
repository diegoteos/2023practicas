<?php

use carpeta1\Humano; // para no usar el namespace al instanciar
// use carpeta2\Humano as humano2; // para renombrar al metodo humano 

include_once 'carpeta1/Humano.php';
include_once 'carpeta2/Humano.php';


$humano1 = new carpeta2\Humano();

echo $humano1->saludar();
