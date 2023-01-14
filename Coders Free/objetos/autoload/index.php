<?php

use controllers\CourseControllers;
use models\Course;

// require_once 'controllers/CourseControllers.php';
// require_once 'models/Course.php';


spl_autoload_register(function ($direccion) {
    $direccion = str_replace('\\', '/', $direccion) . '.php';
    if (file_exists($direccion)) {
        require_once $direccion;
    } else {
        echo "No existe el archivo que requiere. $direccion";
    }
});



$controllers = new CourseControllers;
$controllers->saludar();

echo '<br /><br />';

$course = new Course;
$course->saludar();
