@extends('layouts.app')
@include('Header')
@section('content')
<section class="container-menu">
    <h1 class="title">Módulo determinantes</h1>
    <div class="menu-item">
        <a href="/Actividades"  class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Artículos</p>
        </a>
    </div>
    <div class="menu-item">
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Demostrativo</p>
        </a>
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Posesivo</p>
        </a>
    </div>
    <div class="menu-item">
        <a href="/resources/views/ModuloDeterminante.blade.php"  class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Numerales</p>
        </a>
    </div>

</section>
@endsection
