<?php
require_once('Cars.php');

class uberBlack extends Car
{
    public $tipeCarAccepted;
    public $seatMaterial;

    public function __construct($license, $driver, $tipeCarAccepted, $seatMaterial)
    {
        parent::__construct($license, $driver);
        $this->tipeCarAccepted = $tipeCarAccepted;
        $this->seatMaterial = $seatMaterial;
    }
}
