<?php
require_once ('Cars.php');
class UberVan extends Car
{
    public $typeCarAccepted;
    public $seatMaterial;
    

    public function __construct($license, $driver, $typeCarAccepted, $seatMaterial)
    {
        parent::__construct($license, $driver);
        $this->typeCarAccepted = $typeCarAccepted;
        $this->seatMaterial = $seatMaterial;
    }
    public function setPassenger($passenger){
        if($passenger == 6){
            $this->passenger = $passenger;
        } else {
            echo "Necesitas asignar 6 pasajeros";
        }
    }
}
