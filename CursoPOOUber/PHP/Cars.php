<?php
class Car
{
    public $id;
    public $license;
    public $driver;
    public $passenger;

}
echo '<pre>'; 
$carro1 = new Car();
$carro1->id = 2;
$carro1->license = 2;
$carro1->driver = "jose jose";
$carro1->passenger = 4;
print_r($carro1);

