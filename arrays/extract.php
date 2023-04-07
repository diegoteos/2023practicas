<?php
$json = file_get_contents('https://sistema.rgae.gob.gt/api/ConsultaInformacionPublicaProveedores/Detalle/95974741');
$obj = json_decode($json, true);

print_r($obj);

