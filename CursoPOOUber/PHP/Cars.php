<?php
class Car
{
    public $id;
    public $license;
    public $driver;
    public $passenger;

    private function getClassName()
    {
        return get_called_class();
    }
    public function hola()
     {
        return "Mi carro es $this->license con licencia {$this->getClassName()}";
     }
}

class Carro extends Car
{
    public function __construct($license)
    {
        $this->license = $license;
    }
}
$carro = new Car;
echo Car->license = "Licencia";