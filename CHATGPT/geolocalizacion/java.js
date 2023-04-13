function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition);
    } else {
      alert("La geolocalización no es soportada por este navegador.");
    }
  }
  
  function showPosition(position) {
    var latitud = position.coords.latitude;
    var longitud = position.coords.longitude;
    document.getElementById("ubicacion").innerHTML = "Latitud: " + latitud + ", Longitud: " + longitud;
  }
  