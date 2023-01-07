<?php

class Person
{
    // Declaración de una propiedad
    public $name = "Juan Carlos";

    // Declaración de un método
    function walk() {
        echo $this->name . ' Camina todos los dias';
    }
} 