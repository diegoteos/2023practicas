<?php

class Persona
{
    public $nombre;
    public $apellidos;
    public $edad;

    function __construct($nombre, $apellidos, $edad)
    {
        $this->nombre = $nombre;
        $this->apellidos = $apellidos;
        $this->edad = $edad;
    }

    function __get($propiedad)
    {
        if (property_exists($this, $propiedad)) {
            return $this->$propiedad;
        }
    }

    function __set($propiedad, $valor)
    {
        if (property_exists($this, $propiedad)) {
            $this->$propiedad = $valor;
        }
    }

    function mayorEdad()
    {
        return $this->edad >= 18;
    }

    function nombreCompleto()
    {
        return $this->nombre . " " . $this->apellidos;
    }
}

$persona1 = new Persona("Diego", "Umaña", 3);

if ($persona1->mayorEdad()) {
    echo $persona1->nombreCompleto() . " es mayor de edad";
} else {
    echo $persona1->nombreCompleto() . " es menor de edad";
}
