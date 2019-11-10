@extends('layouts.app')
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
    </div>
</section>
@endsection
