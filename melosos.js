
 

    
    function iniciar() {

    var i=0;
    var txt="¡Estamos melos!" ;
    var velocidad=30;
    var enlace = "#";
    var urla = "https://newsapi.org/v2/top-headlines?country=co&language=es&apiKey=890ed3b022e44dedaae9d79d12a03426";
    var imagen;
    var des;


    $("#elboton").hide();
$.ajax({

        url: urla,
        type:"GET",
        success: function(res)
        {
            console.log(res);

            let elNumero= parseInt(Math.random(0, 20)*20);

            console.log("el numero randomes: " +elNumero);

            txt = res.articles[elNumero].title; 
            enlace = res.articles[elNumero].url; 
            imagen = res.articles[elNumero].urlToImage; 
            des = res.articles[elNumero].description; 
            document.getElementById("segundoround").innerHTML =""

        $("#segundoround").attr("href",enlace);
        $("#evangeline").attr("src",imagen);
        $("#descr").html(des);

         escribir ();
        }
    }) 
function escribir(){
    if (i < txt.length){
        document.getElementById("segundoround").innerHTML +=txt.charAt(i);
            i++;
            setTimeout(escribir, velocidad);

        
    }
    else{ 
        $("#elboton").show()
    }
   

}

    }
