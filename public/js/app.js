const McButton = document.querySelector("#McButton");
const McBar1 = document.getElementById("McBar1");
const McBar2 = document.getElementById("McBar2");
const McBar3 = document.getElementById("McBar3");
const subitems = document.querySelector(".subitems")
const items = document.querySelector(".items")

McButton.addEventListener('click', function() {

    McButton.classList.toggle("active");
    McBar1.classList.toggle("active");
    McBar2.classList.toggle("active");    
    McBar3.classList.toggle("active");
    subitems.classList.toggle("active")
  });

items.addEventListener('click', function() {

    subitems.classList.toggle("active")
  });

const containeraprender = document.getElementsByClassName("container-aprender");
const containerpracticar = document.getElementsByClassName("container-practicar");
const contentpistas = document.querySelector('.content-pistas');
const idea = document.querySelector('.idea');
const iconpistas = document.querySelector('#icon-pistas');
const textopistas = document.querySelector('#texto-pistas');

/* HOVER BOTON APRENDER */
for (let i = 0; i < containeraprender.length; i++) {
        containeraprender[i].addEventListener('mouseover', () => {
        contentpistas.classList.add('active')
        idea.classList.add('active')
        /*firefox*/
        idea.src ='/images/icon_idea_hover.svg';
        iconpistas.src = '/images/icon_aprender.svg';
        textopistas.innerHTML = 'Selecciona el botón <strong>Introducción</strong> para informarte sobre el tema.'
      })
      
      containeraprender[i].addEventListener('mouseout', () => {
        contentpistas.classList.remove('active')
        idea.classList.remove('active')
        /*firefox*/
        idea.src = '/images/icon_idea.svg';
      })
  
}

/* HOVER BOTON PRACTICAR */
for (let i = 0; i < containerpracticar.length; i++) {
  containerpracticar[i].addEventListener('mouseover', () => {
  contentpistas.classList.add('active')
  idea.classList.add('active')
  /*firefox*/
  idea.src ='/images/icon_idea_hover.svg';
  iconpistas.src = '/images/icon_practicar.svg';
  textopistas.innerHTML = 'Accede a los <strong>subtemas</strong> de actividades prácticas.'
})

  containerpracticar[i].addEventListener('mouseout', () => {
  contentpistas.classList.remove('active')
  idea.classList.remove('active')
  /*firefox*/
  idea.src = '/images/icon_idea.svg';
})

}

idea.addEventListener('mouseover', ()=>{
  idea.src ='/images/icon_idea_hover.svg';
})

idea.addEventListener('mouseout', ()=>{
  idea.src ='/images/icon_idea.svg';
})

