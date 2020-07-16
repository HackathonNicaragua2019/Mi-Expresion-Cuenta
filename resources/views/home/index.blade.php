@extends('layouts.app')
@include('Header')
@section('content')

@foreach($modulos as $modulo)
<h1></h1>
<section class="container-menu">
    <h1 class="title">{{$modulo->nombre}}</h1>
    @foreach($modulo->modulos as $tema)
    <div class="menu-item">
        <div class="container-item determinante">
            <p class="title-item">{{$tema->nombre}}</p>
            <span class="subtitle-item">4 clases</span>
            <div class="mimi-modal">
                <a href="/ActividadesAprender" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Introducción</p>
                </a>
                <a href="/moduloDeterminado" class="container-practicar">
                    <img class="icon-practicar" src="/images/icon_practicar.svg" alt="Practicar">
                    <p>Entrar</p>
                </a>
            </div>
        </div>
    </div>
</section>
    @endforeach
@endforeach

@endsection