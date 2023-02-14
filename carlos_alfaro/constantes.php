<?php

// sintaxis antigua
define("NOMBRE", 'Diego Teos');

echo NOMBRE;


// forma reciente de definir una constante
const APELLIDOS = 'Lopez Perez';
echo '<br/><br/>';
echo APELLIDOS;


echo '<br/><br/>';


// definiendo una constante y asignarle un array
const ALUMNOS = array("Carlos", "Alfredo", "Jose");

echo ALUMNOS[1];