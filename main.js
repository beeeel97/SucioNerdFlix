
//PARA QUE FUNCIONEN LOS BOTONES EN CADA CARRUSEL HAY QUE METER UNA VARIABLE CONTADOR Y PONERSELA A CADA VARIABLE DE JS PARA QUE ASI SEA UNICAS PARA CADA CARRUSEL

let brecha="gap";
let carrusel="carousel";
let contenido="gap";
let siguiente="gap";
let anterior="gap"





for (var i = 0; i < 4; i++){
    
   
    gap=brecha;
    gap=gap+i
    console.log(gap)

    gap =16

    carousel=carrusel;
    carousel=carousel+i
    console.log(carousel)

  

    // gap=variable;
    // gap=gap+i
    // console.log(gap)

   

    // gap=variable;
    // gap=gap+i
    // console.log(gap)

   

    // gap=variable;
    // gap=gap+i
    // console.log(gap)

  


    
    let carousel = document.getElementById("carousel${i}")
    let  (content+i) = document.getElementById("content${i}")
    
    let (next+i) = document.getElementById("next${i}")
     let  (prev+i) = document.getElementById("prev${i}")
    
    next+i.addEventListener("click", e => {
     (carousel+i).scrollBy((width+i) + (gap+i), 0);
     if ((carousel+i).scrollWidth !== 0) {
       (prev+i).style.display = "flex";
     }
     if ((content+i).scrollWidth - (width+i) - (gap+i) <= (carousel+i).scrollLeft + (width+i)) {
       (next+i).style.display = "none";
     }
    });
    (prev+i).addEventListener("click", e => {
     (carousel+i).scrollBy(-((width+i) + (gap+i)), 0);
     if ((carousel+i).scrollLeft - (width+i) - (gap+i) <= 0) {
       (prev+i).style.display = "none";
     }
     if (!(content+i).scrollWidth - (width+i) - (gap+i) <= (carousel+i).scrollLeft + (width+i)) {
       (next+i).style.display = "flex";
     }
    });
    
    let (width+i) = (carousel+i).offsetWidth;

    
    function e() {
        let varia =  (width+i)
        varia = (carousel+i).offsetWidth;     
    }

    window.addEventListener("resize", e);
    }