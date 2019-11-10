@extends('layouts.app')
@include('Header')
@section('content')
<section class="container-menu">
    <h1 class="title">Modulo Determinantes</h1>
    <div class="container-menu-one">
        <a href="/resources/views/ModuloDeterminante.blade.php"  class="container-item">
            <img class="icon5 icon-menu">
            <p class="subtitle-menu">Determinantes</p>
        </a>
    </div>
    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon6 icon-menu">
            <p class="subtitle-menu">Adjetivos</p>
        </a>
        <a href="" class="container-item">
            <img class="icon7 icon-menu">
            <p class="subtitle-menu">Preposiciones</p>
        </a>
    </div>

</section>
@endsection
