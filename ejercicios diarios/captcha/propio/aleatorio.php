<?php
$permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyz';
// Output: 54esmdr0qf 
$valor =  substr(str_shuffle($permitted_chars), 0, 5);

session_start();
$_SESSION["$valor"];
?>