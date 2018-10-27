/*let persona = {
    nombre: "Asael",
    apellido: "Gomez",
    peso:100,
    edad: 18,
    doctor:false,
    programador: true,
    ciudad: "Bogota"
    
}
var htmlElement = document.getElementById("mensaje");
if (persona.edad)
{
return
}

function leertamano(){
var alto, ancho;
alto= document.documentElement.clientHeight;
ancho=document.documentElement.clientHeight;
$("#mensaje").html("el alto actual es:"+alto+"y  el ancho:"+ancho)

//document.getElementById("mensaje").innerHTML=alto

}*/


    var i=0;
    var txt="Estamos melos";
    var velocidad=100;
    function reming() {

    if (i< txt.length) {
    document.getElementById("segundoround").innerHTML +=txt.charAt(i);
    i++;
    setTimeout(reming, velocidad);

    }
alert  ("Termina funcion")
    }
