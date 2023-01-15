<?php
// las interfaces son como contratos (se deben cumplir los metodos que alli estan definidos)
interface Person
{
    public function getName();
}

class Admin implements Person
{
    public $name;

    public function __construct($name)
    {
        $this->name = $name;
    }

    public function getName(){
        return "Este es el nombre " . $this->name;
    }
}

$admin = new Admin("Walter Ranger");
echo $admin->getName();
