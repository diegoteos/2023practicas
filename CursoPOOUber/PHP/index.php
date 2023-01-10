<?php
require_once 'Cars.php';
require_once 'uberX.php';
require_once 'account.php';
require_once 'uberPool.php';
require_once 'uberVan.php';

$uberX = new UberX('CVB123', new Account("Andres Herrera Lopez", "AND456"), "Chevrolet", 'Spark');
$uberX->printDataCar();

echo '<br>';

$uberPool = new UberPool('ABC123', new Account("Andre Bocatelli", "ABC336"), "Dodge", 'Ram');
$uberPool->printDataCar();

echo '<br>';

$uberVan = new UberVan("OJO444", new Account("Ramiro De Leon", "LIC111"), "Nissan", "Patrol");
$uberVan->setPassenger(6);
$uberVan->printDataCar();

