<?php
$permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyz';
// Output: 54esmdr0qf 
echo substr(str_shuffle($permitted_chars), 0, 2);
// $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
// // Output: video-g6swmAP8X5VG4jCi.mp4 
// echo 'video-'.substr(str_shuffle($permitted_chars), 0, 16).'.mp4';
?>