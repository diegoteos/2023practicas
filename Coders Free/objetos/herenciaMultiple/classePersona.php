<?php

class Persona
{
    public $nombre;

    public function saludo(){
        echo "Hola";
    }

    public function setNombre($nombre)
    {
        return  $this->nombre = strtolower($nombre);
    }

    public function getNombre(){
        return ucwords($this->nombre);
    }
}
