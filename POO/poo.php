<?php

class Producto
{
    public $nombreProducto;
    public $precioProducto;
    public $paisProducto;
    public $colorProducto;


    public function __construct($nombreProducto, $precioProducto, $paisProducto, $colorProducto)
    {
        $this->nombreProducto = $nombreProducto;
        $this->precioProducto = $precioProducto;
        $this->paisProducto = $paisProducto;
        $this->colorProducto = $colorProducto;

    }
    function reciboNombreProducto()
    {
        return "el producto es: " . $this->nombreProducto . " y su precio es de " . $this->precioProducto;
    }
}

$primerProducto = new Producto("Tomates", 22, "Guatemala", "Rojos, bien rojos");
// $primerProducto->nombreProducto = "Tomates verdes fritos";
// $primerProducto->precioProducto = 23;
// $primerProducto->paisProducto = 'Guatemala';

echo $primerProducto->reciboNombreProducto();
