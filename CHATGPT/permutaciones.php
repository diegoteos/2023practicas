<?php

$digits = range(0, 9); // generamos un array con los dígitos del 0 al 9
$consonants = str_split('bcdfghjklmnpqrstvwxyz'); // generamos un array con las consonantes (excluyendo la "ñ")

foreach ($digits as $digit1) { // primer dígito
  foreach ($digits as $digit2) { // segundo dígito
    foreach ($digits as $digit3) { // tercer dígito
      foreach ($consonants as $consonant1) { // primer consonante
        foreach ($consonants as $consonant2) { // segunda consonante
          foreach ($consonants as $consonant3) { // tercera consonante
            $permutation = $digit1 . $digit2 . $digit3 . $consonant1 . $consonant2 . $consonant3; // concatenamos los dígitos y las consonantes para generar la permutación
            if ($permutation > 'bzz') { // si la permutación es mayor que "kzz", salimos del bucle
              break 6;
            }
            echo $permutation . "<br>"; // imprimimos la permutación en la pantalla
          }
        }
      }
    }
  }
}
?>

