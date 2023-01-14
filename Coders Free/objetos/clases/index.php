<?php
require_once 'clases/personas.php';

$persona1 = new Persona("Jesus Armando", "Lopez Albañil", 23);
// $persona1->setNombre("Diego ArMando");
// $persona1->apellido = "Maradona";
// $persona1->edad = 22;


$persona2 = new Persona("Alejandro Jose", "Perez Anguila", 23);
// $persona2->setNombre("Juan Carlos");
// $persona2->apellido = "Plata";
// $persona2->edad = 21;


echo '<br/>';
echo "El nombre de la persona 1 es: " . $persona1->getNombre() . '<br/>';
echo "El nombre de la persona 2 es: " . $persona2->gitNombre() . '<br/>';
