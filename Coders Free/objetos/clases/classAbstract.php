<?php

abstract class ClaseAbstract
{
    abstract protected function getValor();
    abstract protected function valorPrefijo($prefijo);

    public function imprimir()
    {
        echo $this->getValor();
    }
}

class ClaseConcreta extends ClaseAbstract
{
    protected function getValor()
    {
        return "Clase concreta";
    }
    protected function valorPrefijo($prefijo)
    {
        return $prefijo . " Clase concreta";
    }
}

$clase1 = new ClaseConcreta;
$clase1->imprimir();
