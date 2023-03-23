<?php


$image = imagecreatetruecolor(234, 129);

header('Content-Type: image/jpeg');

imagejpeg($image);
imagedestroy($image);
