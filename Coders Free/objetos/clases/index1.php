<?php

require_once 'clases/personas.php';
// $peruano = new Peruano;

// $peruano->setNombre("Victor Hernan");

// var_dump($peruano);

// echo '<br /><br />';
// $chileno = new Chileno();
// var_dump($chileno);
$chileno = new Chileno;
$chileno->setApellidos("oscar", "de la olla");

echo $chileno->getApellidos();

echo '<br /><br />';

$peruano = new Peruano;
$peruano->setApellidos("oscar", "de la olla");
echo $peruano->getApellidos();
