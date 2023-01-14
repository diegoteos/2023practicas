<?php

class Persona
{
    public $nombre, $edad;
    public $apellido1, $apellido2;

    public function setNombre($nombre)
    {
        $this->nombre = strtolower($nombre);
    }

    public function getNombre()
    {
        return ucwords($this->nombre);
    }

    public function setApellidos($apellido1, $apellido2){
        $this->apellido1 = $apellido1;
        $this->apellido2 = $apellido2;
    }

    public function getApellidos(){
        return $this->apellido1 . "  " . $this->apellido2;
    }
}

class Peruano extends Persona
{
    public $departamento, $ciudad;
}

class Chileno extends Persona
{
    public $comunidad, $region;

    public function setApellidos($apellido1, $apellido2){
        $this->apellido1 = $apellido2;
        $this->apellido2 = $apellido1;
    }
}
