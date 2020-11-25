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
    btn_comprobar.classList.remove('active')
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


function mostrarBtnComprobar(){
    
    btn_comprobar.classList.add('active')
}

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


function validarPalabraSubrayada( palabra, idpregunta ){

    
    const opciones = document.getElementsByName(`preguntas[${idpregunta}]`)

    validarRespuestas(opciones,palabra )

    
}

function validarRespuestas(opciones,palabra ){
    
    let respuesta = false;
    let opcionesNombre;
    let opcionesPuntos;
    

    for (let i = 0; i < opciones.length; i++) {
        opcionesNombre = opciones[i].dataset.nombre.toLowerCase()
        opcionesPuntos = opciones[i].dataset.puntos
        if(palabra.toLowerCase() === opcionesNombre && opcionesPuntos != 0){
            respuesta = true
            opciones[i].setAttribute("checked","checked")
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

function disableselect(e) {
    return false
}

/****************************************************
 Logica de actividad de Arrastrar y soltar 
  **************************************************/
function validarArrastres (idpregunta, idopcion ){
    
    const contenedoropciones = document.getElementById(`contenedoropciones[${idpregunta}]`)
    const contenedorarrastre = document.getElementById(`contenedorarrastre[${idpregunta}]`)
    const opcionSeleccionda = document.getElementById(`opcion-${idopcion}`)
    const cajarespuesta = document.getElementById(`caja-respuesta[${idpregunta}]`)
            
   
    console.log("nodo a checkear :" + idopcion)
    console.log("nodo a checkear :" + opcionSeleccionda)

        contenedoropciones.addEventListener("dragstart", e => {
            e.dataTransfer.setData("id", e.target.id)
            
            e.target.classList.add("grabbing")
    
        })
        contenedoropciones.addEventListener("drag", e => {
           
            
            e.target.classList.add("grabbing")
    
        })  
        contenedorarrastre.addEventListener('dragover', e => {

            e.preventDefault()
            e.target.classList.add("hover")
        })
        contenedorarrastre.addEventListener('dragleave', e => {

            e.target.classList.remove("hover")
        })
        contenedorarrastre.addEventListener('drop', e => {
            
            e.target.classList.remove("hover")

            const id = e.dataTransfer.getData("id")
           
            const opcion = document.getElementById(id)

            
            
            if (opcion.dataset.puntos > 0  ) {
                modal_correcto.classList.add('active');
                modal_correcto.style.animation = 'animationIn 1s forwards';
                opcionSeleccionda.setAttribute("checked","checked")

                cajarespuesta.appendChild(opcion)
            }else{
                modal_incorrecto.classList.add('active');
                modal_incorrecto.style.animation = 'animationIn 1s forwards';
            }
        })
}
            

    
            
        

  


