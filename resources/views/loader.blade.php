<div class="loader">
    <img src="{{ asset('images/Logotipo_finish-02.png') }}" class="icon" alt="icon loader - mi expresion cuenta">
</div>
<script>
const loader = document.querySelector(".loader")

window.addEventListener("load", function(event) {
  console.log("DOM fully loaded and parsed");
  loader.classList.toggle("inactive")
});
</script>