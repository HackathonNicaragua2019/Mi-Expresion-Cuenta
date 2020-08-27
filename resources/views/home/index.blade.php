@extends('layouts.app')
@section('content')
@include('HeaderActivity')
@foreach($modulos as $modulo)
<section class="container-menu">
    <h1 class="title">{{$modulo->nombre}}</h1>
    <div class="menu-item">
    @foreach($modulo->modulos as $tema)
        <div class="container-item" style="background-image: url('{{$tema->imagen}}'">
            <p class="title-item">{{$tema->nombre}}</p>
            <div class="mimi-modal">
                <a href="/ActividadesAprender{{$tema->idteoria}}" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Introducción</p>
                </a>
                <a href="/{{$modulo->nombrecorto}}/tema{{$tema->id}}" class="container-practicar">
                    <img class="icon-practicar" src="/images/icon_practicar.svg" alt="Practicar">
                    <p>Entrar</p>
                </a>
            </div>
        </div>
    @endforeach
    </div>
</section>
@endforeach

@endsection