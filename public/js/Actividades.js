const scroll = document.querySelector('.activity_pregunta_scroll_container');
const contenedor = document.querySelector('.activity_pregunta_scroll');
const btn_siguiente = document.getElementById('btn_siguiente');
const modal_incorrecto = document.getElementById('modal_incorrecto');
const modal_correcto = document.getElementById('modal_correcto');
const btn_intentar = document.getElementById('btn_intentar');
const btn_guardar = document.querySelector('#btn_guardar');

const modalPista = document.getElementById("modal_pista");
const btn_pista_actividad = document.getElementById("pista_actividad");
const btn_cerrar_pista = document.getElementById("btn_cerrar_pista");

const btn_comprobar = document.getElementById('btn_comprobar')
let inputrespuesta;



//mostrar modal de pista

btn_pista_actividad.addEventListener('click', function() {
 
    modalPista.classList.add('active');
    modalPista.style.animation = 'animationIn 1s forwards';

})

btn_cerrar_pista.addEventListener('click', function() {
 
    modalPista.style.animationDelay = "1s"
    modalPista.style.animation = 'animationOut 1s forwards';

})


btn_siguiente.addEventListener('click', function ( e ){
  e.preventDefault();
    scroll.scrollLeft += scroll.offsetWidth;
    modal_correcto.style.animationDelay = "1s"
    modal_correcto.style.animation = 'animationOut 1s forwards';
    //btn_comprobar.classList.remove('active')
    esElFinal()

});

scroll.addEventListener('scroll', function(){

   /* if (scroll.scrollLeft === (scroll.scrollWidth - contenedor.offsetWidth)) {
        
        btn_guardar.classList.add('active')
        alert('listo para guadar')
    }*/
})

function esElFinal(){
    if (scroll.scrollLeft === (scroll.scrollWidth - contenedor.offsetWidth)) {
        
        btn_guardar.classList.add('active')
    }
}
/*
btn_guardar.addEventListener('click', ( e )=>{
    e.preventDefault()
})*/




function validarRespuestaCorrecta( idpregunta ){
    
    opcionSeleccionada = document.getElementById(idpregunta).dataset.puntos;
   
    //validando si el valor de la opcion seleccionada es difirente a 0, si lo es , es a respuesta correcta
    if(opcionSeleccionada != 0) {
        modal_correcto.classList.add('active');
        modal_correcto.style.animation = 'animationIn 1s forwards';
        
    }
    else{
        
        modal_incorrecto.classList.add('active');
        modal_incorrecto.style.animation = 'animationIn 1s forwards';
    }
}
//boton del volver intentar -  oculta el modal de equivocacion
btn_intentar.addEventListener('click',() =>{
    modal_incorrecto.style.animationDelay = "1s"
    modal_incorrecto.style.animation = 'animationOut 1s forwards';
})

const ActividadPista = document.getElementById('ActividadPista').textContent;
const texto_modal_pista = document.getElementById('texto_modal_pista').innerHTML = ActividadPista;

const imagen_pista = document.getElementById("imagen_pista").textContent;
const img_pista_modal = document.getElementById("icon_pista").src = imagen_pista;



//Actividad de complete espacios en blanco

/*
inputrespuesta.addEventListener('change', ()=>{

    if(inputrespuesta.value.length >= 1){ // mostrar el btn validar solo cuando haya ingresado mas de dos caracteres en el input

       // btn_comprobar.classList.add('active')
       
    }
})
*/

btn_comprobar.addEventListener('click', ( e )=>{
    
    e.preventDefault()
    
})



function validarRespuestaCorrectaComplete( idpregunta ){
    //debugger
    inputrespuesta = document.getElementById(`input-respuesta[${idpregunta}]`);

    
    const opcionesEnBlanco = document.getElementsByName(`preguntas[${idpregunta}]`)
    let opcionesNombre;
    let opcionesPuntos;
    let respuesta;
    if(inputrespuesta.value.length >= 1){ // mostrar el btn validar solo cuando haya ingresado mas de dos caracteres en el input
        btn_comprobar.classList.add('active')
        
    
        for (let i = 0; i < opcionesEnBlanco.length; i++) {
            opcionesNombre = opcionesEnBlanco[i].dataset.nombre.toLowerCase()
            opcionesPuntos = opcionesEnBlanco[i].dataset.puntos
            if(inputrespuesta.value.toLowerCase() === opcionesNombre && opcionesPuntos != 0){
                respuesta = true
                opcionesEnBlanco[i].setAttribute("checked","checked")
            }
        }

        if(respuesta){
            modal_correcto.classList.add('active');
            modal_correcto.style.animation = 'animationIn 1s forwards';
        }else{
            modal_incorrecto.classList.add('active');
            modal_incorrecto.style.animation = 'animationIn 1s forwards';
        }
    
    }

    
}

    

