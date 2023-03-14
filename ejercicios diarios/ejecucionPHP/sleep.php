<?php

// hora actual
echo date('h:i:s') . "\n";

// dormir durante 10 segundos
// $tiempo = sleep(5);
echo '<br>';
// ¡despierta!
echo date('h:i:s') . " el script se ejecuto por $tiempo ". "\n";

echo '<br>';


// displaying time
echo date('h:i:s')."\n" ;
   
// using rand() function to randomly choose
// a value and delay execution of the script
sleep(rand(1, 5));
   
// displaying time again
echo date('h:i:s');
  
?>
