<?php

class Hogar  // la palabra reservada final no permite heredar las propiedades ni los metodos
{
    public $color;
    public $seguridad;

    final public function saludar(){
        echo "Bienvenido a mi hogar";
    }
}

class Departamento extends Hogar
{
    // public function saludar(){
    //     echo "Bienvenido a mi departamento";
    // }
}

$depto = new Departamento;

$depto->saludar();