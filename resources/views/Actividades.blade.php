@extends('layouts.app')
@include('Header')
@section('content')

<section class="container-menu">
    <h1 class="title">Seleccione los artículos determinados e indeterminados para cada sustantivo</h1>

    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon2 icon-menu" data-toggle="modal" onClick="hideModal()" >
            <p class="subtitle-menu">La sombrilla</p>

        </a>
        <a href="" class="container-item">
            <img class="icon3 icon-menu">
            <p class="subtitle-menu">El Avión</p>
        </a>
    </div>
    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon2 icon-menu">
            <p class="subtitle-menu">Tus Objetos</p>
        </a>
        <a href="" class="container-item">
            <img class="icon3 icon-menu">
            <p class="subtitle-menu">Este lápiz</p>
        </a>
    </div>
@include('modal')
</section>
@endsection
