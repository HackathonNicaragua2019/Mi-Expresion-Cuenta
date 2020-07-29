@extends('layouts.app')
@include('Header')
@section('content')
@include('HeaderActivity')


@foreach($temas as $tema)
<section class="container-menu">
    <h1 class="title">Subtema {{$tema->nombre}}</h1>
    <div class="menu-item">
    @foreach($subtema as $subtema)
        <div class="container-item" style="background-image: url('{{$subtema->imagen}}'">
            <p class="title-item">{{$subtema->nombre}}</p>
            <div class="mimi-modal">
                <a href="/ActividadesAprender" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Aprender</p>
                </a>
                <a href="/actividad{{$subtema->id}}" class="container-practicar">
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
