<?php


$url = 'https://nordvpn.com/wp-admin/admin-ajax.php?action=get_user_info_data&ip=' . $_SERVER['REMOTE_ADDR'];

$info = file_get_contents($url);

$info = json_decode($info, true);
echo '<pre>';
print_r($info);

if ($info['isp'] != 'Unknown') {
    $ip = $info['ip'];
    $isp = $info['isp'];
    $pais = $info['country'];
    $region = $info['region'];
    echo "La IP es: $ip el proveedor de servicio es: $isp del pais $pais aproximadamente en el departamento de $region";
}
