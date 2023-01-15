<?php

class User
{
    public $name;

    public function __construct($name)
    {
        $this->name = $name;
    }

    public function getName()
    {
        return "Hola soy " . $this->name;
    }
}


class Admin extends User {
    public function getName()
    {
        return "Soy " . $this->name;
    }
}

$admin = new Admin("Diego Teos");
echo $admin->getName();

