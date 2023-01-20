<?php

/** 
 * Retorna la suma de dos numeros
 * @param int $a;
 * @param int $b;
 */
class operacionesAritmeticas{
    public $a;
    public $b;

    public function __construct( $a, $b ){
        $this->a = $a;
        $this->b = $b;
    }
    public function suma()
    {
        return  $this->a + $this->b;
    }
}

$suma = new operacionesAritmeticas(44, 44);

echo $suma->suma();
