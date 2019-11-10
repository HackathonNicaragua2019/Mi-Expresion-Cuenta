@extends('layouts.app')
@include('Header')
@section('content')
<section class="container-menu">
    <h1 class="title">Módulo determinantes</h1>
    <div class="container-menu-one">
        <a href="/Actividades"  class="container-item">
            <img class="icon5 icon-menu">
            <p class="subtitle-menu">Artículos</p>
        </a>
    </div>
    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon6 icon-menu">
            <p class="subtitle-menu">Demostrativo</p>
        </a>
        <a href="" class="container-item">
            <img class="icon7 icon-menu">
            <p class="subtitle-menu">Posesivo</p>
        </a>
    </div>
    <div class="container-menu-one">
        <a href="/resources/views/ModuloDeterminante.blade.php"  class="container-item">
            <img class="icon5 icon-menu">
            <p class="subtitle-menu">Numerales</p>
        </a>
    </div>

</section>
@endsection