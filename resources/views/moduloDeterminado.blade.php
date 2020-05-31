@extends('layouts.app')
@include('Header')
@section('content')
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
        </a>
    </div>

</section>
@endsection
