Para almacenar cada uno de los resultados de la consulta en una variable en PHP, puedes utilizar la función `mysqli_fetch_assoc` para obtener los datos de cada fila de resultados y guardarlos en un array. Aquí te dejo un ejemplo de cómo hacerlo:

```php
<?php

// Configuración de la conexión a la base de datos
$servidor = "localhost";
$usuario = "tu_usuario";
$contrasena = "tu_contraseña";
$basedatos = "tu_basedatos";

// Conexión a la base de datos
$conexion = mysqli_connect($servidor, $usuario, $contrasena, $basedatos);

// Comprobamos si hay errores de conexión
if (!$conexion) {
    die("Error de conexión: " . mysqli_connect_error());
}

// Consulta SQL
$query = "SELECT `depto`, COUNT(`depto`) as departamentos FROM finanzas GROUP BY `depto` ORDER BY `finanzas`.`depto`;";

// Ejecutamos la consulta
$resultados = mysqli_query($conexion, $query);

// Almacenamos los resultados en un array
$departamentos = array();
while ($fila = mysqli_fetch_assoc($resultados)) {
    $departamentos[$fila["depto"]] = $fila["departamentos"];
}

// Cerramos la conexión a la base de datos
mysqli_close($conexion);

// Imprimimos el array de resultados
print_r($departamentos);

?>
```

En este ejemplo, hemos almacenado los resultados de la consulta en un array llamado `$departamentos`, donde cada elemento del array representa un departamento y su valor es el número de registros en la tabla `finanzas` que corresponden a ese departamento. Hemos utilizado un bucle `while` para iterar sobre los resultados obtenidos de la consulta SQL utilizando la función `mysqli_fetch_assoc`, y hemos guardado los valores en el array `$departamentos`. Finalmente, hemos impreso el array de resultados utilizando la función `print_r`.

Espero que esto te sea de ayuda.