@extends('layouts.app')
@include('Header')
@section('content')
@include('HeaderActivity')

<section class="container-menu">
@foreach($temas as $tema)
    <h1 class="title">Tema {{$tema->nombre}}</h1>
    @foreach($subtema as $subtema)
    <div class="menu-item">
        <a href="/Actividades"  class="container-item articulos">
            <p class="title-item">{{$subtema->nombre}}</p>
        </a>
    </div>
    @endforeach
@endforeach
</section>
@endsection
