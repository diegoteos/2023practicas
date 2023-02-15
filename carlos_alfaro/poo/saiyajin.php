<?php

class Saiyajin
{

    // si queremos un tipado estricto podemos definirlo pero no es obligatorio
    public string $nombre = 'Goku';
    public int $nivel_pelea = 1000;


    // podemos tipar la respuesta de la funcion, agregando : y definiendo el tipo de dato
    public function Saludar(): string
    {
        return "Hola soy " . $this->nombre . $this->NivelDePelea();
    }

    public function NivelDePelea()
    {
        return $this->nombre . ' tiene un nivel de pelea de ' . $this->nivel_pelea;
    }
}

$goku = new Saiyajin();
// var_dump($goku);  muestra que es un objeto 
echo $goku->Saludar();


$vegueta = new Saiyajin();

