@extends('layouts.app')
@include('Header')
@section('content')

<section class="container-menu">
    <h1 class="title">Módulo 1</h1>
    <div class="container-menu-one">
        <a href="/moduloDeterminado"  class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/icon1.svg">
            <p class="subtitle-menu">Determinantes</p>
        </a>
    </div>
    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/icon2.svg">
            <p class="subtitle-menu">Adjetivos</p>
        </a>
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/icon3.svg">
            <p class="subtitle-menu">Preposiciones</p>
        </a>
    </div>
    <div class="container-menu-one">
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Conectores</p>
        </a>
    </div>
</section>
@endsection
