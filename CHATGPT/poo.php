<?php
// Definir una clase 'Persona'
class Persona {
  // Propiedades
  public $nombre;
  public $edad;
  
  // Método constructor
  function __construct($nombre, $edad) {
    $this->nombre = $nombre;
    $this->edad = $edad;
  }
  
  // Métodos
  public function presentarse() {
    echo "Hola, mi nombre es " . $this->nombre . " y tengo " . $this->edad . " años.";
  }
}

// Crear una instancia de la clase 'Persona'
$persona1 = new Persona("Juan", 25);

// Llamar al método 'presentarse'
$persona1->presentarse();
?>