@extends('layouts.app')
@include('Header')
@section('content')
<<<<<<< HEAD
<section class="container-menu">
    <h1 class="title">Módulo determinantes</h1>
    <div class="container-menu-one">
        <a href="/Actividades"  class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Artículos</p>
        </a>
    </div>
    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Demostrativo</p>
        </a>
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Posesivo</p>
        </a>
    </div>
    <div class="container-menu-one">
        <a href="/resources/views/ModuloDeterminante.blade.php"  class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Numerales</p>
=======
@include('HeaderActivity')
<section class="container-menu">
    <h1 class="title">Módulo determinantes</h1>
    <div class="menu-item">
        <a href="/Actividades"  class="container-item articulos">
            <p class="title-item">Artículos</p>
        </a>
    </div>
    <div class="menu-item">
        <a href="" class="container-item demostrativo">
            <p class="title-item">Demostrativo</p>
        </a>
        <a href="" class="container-item posesivo">
            <p class="title-item">Posesivo</p>
        </a>
    </div>
    <div class="menu-item">
        <a href="/resources/views/ModuloDeterminante.blade.php"  class="container-item numerales">
            <p class="title-item">Numerales</p>
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
        </a>
    </div>

</section>
@endsection
