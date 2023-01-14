<?php

class Persona
{
    public $nombre, $apellido, $edad;


    public function setNombre($nombre)
    {
        $this->nombre = strtolower($nombre);
    }

    public function getNombre()
    {
        return ucwords($this->nombre);
    }
}

class Peruano extends Persona
{
}

class Chileno extends Persona
{
}
