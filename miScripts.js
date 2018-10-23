//alert("hola mundo");

var salario, transporte, sueldo, gastos, mesada;
sueldo = 781242;
transporte = 88250;

var felicitar = "lo estamos haciendo bien";
var triste = "aprendamos a programar";

function sumar() {
	salario = sueldo + transporte;
}

sumar();

/*alert(salario);*/

function calcular () {
	gastos = prompt("inrese gastos");

	mesada = salario - gastos;

	if (mesada > 500000) {
		//alert("lo estamos haciendo bien");
		document.getElementById("dmg").innerHTML=felicitar;
	} else {
		//alert("aprendamos a programar");
		document.getElementById("dmg").innerHTML=triste;
	}
}

calcular();