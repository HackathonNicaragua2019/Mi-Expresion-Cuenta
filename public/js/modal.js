Learn more or give us feedback

const $overlay = document.getElementById('overlay');
const $showModal =document.getElementById('modal');


function HideModal(){
   alert("Click");
    $showModal.style.animation = 'animationOut .8s forwards';
    $overlay.style.transitionDelay = '.8s';
    $overlay.classList.remove('active');

}
