<!DOCTYPE html>
<html>

<body>

    <?php
    $str = 'Yo visito la pagina web de Microsoft!';

    // USO DE OR 
    $cambio1 = "[microsoft|Microsoft]";
    $valor1 = preg_replace($cambio1, 'Google', $str);
    echo $valor1 . '<br />';


    // MAYUSCULAS Y MINUSCULAS
    $cambio2 = '/microsoft/i';
    $valor2 = preg_replace($cambio2, 'Google', $str);
    echo $valor2 . '<br />';
    ?>

</body>

</html>