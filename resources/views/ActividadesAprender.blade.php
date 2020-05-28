@extends('layouts.app')
@include('HeaderActivity')
@section('content')

<section class="container-activity">
    <div class="activity">
        <img class="baner-aprender" src="/images/determinantes.svg" alt="images determinantes">
        <h1 class="title aprender">Los determinantes</h1>
        <p class="parrafos">Los determinantes son las palabras que usamos para delimitar y precisar 
            a la persona, animal, idea o cosa de la que estamos hablando. 
            Son artículos o adjetivos con los que los identificamos.

            <br>
            <br>
            Los usamos cuando tenemos sustantivos como los siguientes:
        </p>
        <ul class="parrafos">
            <li>Casa</li>
            <li>Gato</li>
            <li>Ideas</li>
        </ul>
        <p class="parrafos">Estos sustantivos están mencionados en forma genérica, pero sin estar completamente identificados. 
            Si ahora les agregamos un determinante, ayuda a delimitar el sujeto sobre el que estamos hablando:
        </p>
        <br>
    
        <ul class="parrafos">
            <li>La Casa</li>
            <li>Mi casa</li>
            <li>Esa casa</li>
            <li>Un gato</li>
            <li>Medio gato</li>
            <li>Algunas ideas</li>
            <li>Aquellas ideas</li>
        </ul>
        
    </div>
</section>
@endsection
