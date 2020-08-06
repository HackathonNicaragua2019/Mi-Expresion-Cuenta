const McButton = document.querySelector("#McButton");
const McBar1 = document.getElementById("McBar1");
const McBar2 = document.getElementById("McBar2");
const McBar3 = document.getElementById("McBar3");
const subitems = document.querySelector(".subitems")

McButton.addEventListener('click', function() {

    McButton.classList.toggle("active");
    McBar1.classList.toggle("active");
    McBar2.classList.toggle("active");    
    McBar3.classList.toggle("active");
    subitems.classList.toggle("active")
  });
