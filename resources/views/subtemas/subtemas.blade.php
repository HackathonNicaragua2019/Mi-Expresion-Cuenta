@extends('layouts.app')
@include('Header')
@section('content')
@include('HeaderActivity')


@foreach($temas as $tema)
<section class="container-menu">
    <h1 class="title">Tema {{$tema->nombre}}</h1>
    <div class="menu-item">
    @foreach($subtema as $subtema)
        <div class="container-item determinante">
            <p class="title-item">{{$subtema->nombre}}</p>
            <span class="subtitle-item">4 clases</span>
            <div class="mimi-modal">
                <a href="/ActividadesAprender" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Aprender</p>
                </a>
                <a href="" class="container-practicar">
                    <img class="icon-practicar" src="/images/icon_practicar.svg" alt="Practicar">
                    <p>Practicar</p>
                </a>
            </div>
        </div>
    @endforeach
    </div>
</section>
@endforeach
@endsection
