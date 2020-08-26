@extends('layouts.app')
<<<<<<< HEAD
@include('Header')
@section('content')

<section class="container-menu">
    <h1 class="title">Seleccione los artículos determinados e indeterminados para cada sustantivo</h1>

    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon-menu" data-toggle="modal" src="/images/Icons_Modulo_1/determinantes3.svg"  onClick="alert('¡Muy bien hecho!')" >
            <p class="subtitle-menu">La sombrilla</p>

        </a>
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg" onClick="alert('¡Muy bien hecho!')" >
            <p class="subtitle-menu">El Avión</p>
        </a>
    </div>
    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg" onClick="alert('¡Has fallado, lee de nuevo el enunciado!')">
            <p class="subtitle-menu">Tus Objetos</p>
        </a>
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg"onClick="alert('¡Muy bien hecho!')" >
            <p class="subtitle-menu">Este lápiz</p>
        </a>
=======
@include('HeaderActivity')
@section('content')

<section class="container-activity">
    <div class="activity">
        <h1 class="title">¿Cuál es el determinante?</h1>
        <p class="enunciado">Cogieron unas manzanas de ahí.</p>
        <div class="container-respuestas">
            <button class="btn respuesta">
                unas
            </button>
            <button class="btn respuesta">
                de
            </button>
            <button class="btn respuesta">
                ahí     
            </button>
        </div>
        <div class="container-validacion">
                <button class="btn active comprobar">
                    Comprobar
                </button>
                <button class="btn btn-green siguiente">
                    Siguiente
                </button>
        </div>
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
    </div>
</section>
@endsection
