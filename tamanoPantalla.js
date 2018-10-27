function leerTamano(){
    var alto, ancho;
    alto= document.documentElement.clientHeight;
    ancho=document.documentElement.clientWidth;
    $("#tamano").html("el alto actual es: " + alto + " y el ancho: " + ancho)
}