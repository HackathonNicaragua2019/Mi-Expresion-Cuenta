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





function validarRespuestaCorrecta( idpregunta ){
    
    const opcionSeleccionada = document.getElementById(idpregunta).value;
   
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

btn_intentar.addEventListener('click',() =>{
    modal_incorrecto.style.animationDelay = "1s"
    modal_incorrecto.style.animation = 'animationOut 1s forwards';
})

const ActividadPista = document.getElementById('ActividadPista').textContent;
const texto_modal_pista = document.getElementById('texto_modal_pista').innerHTML = ActividadPista;

const imagen_pista = document.getElementById("imagen_pista").textContent;
const img_pista_modal = document.getElementById("icon_pista").src = imagen_pista;

