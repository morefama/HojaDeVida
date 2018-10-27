//alert ("AQUI ESTOY");
var salario, trasporte, sueldo, mesada,gastos
var felicitar = "Lo Estamos Haciendo Bien";
var triste = "Lo Estamos Haciendo Mal";

sueldo= 781242;
trasporte = 88250;
function sumar () {
    salario = sueldo + trasporte;
}
    sumar ();
//alert(salario);
function gastos () {
    gastos = prompt ("ingreso gastos"); 
    mesada = salario - gastos;
    if (mesada > 500000){
        //alert ("Lo estamos haciendo bien");
        document.getElementById("dmg").innerHTML=felicitar;
    } else 
    {
        //{alert ("aprendamos a programar");
        document.getElementById("dmg").innerHTML=triste;
    }

} 
gastos ();

