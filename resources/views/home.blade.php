@extends('layouts.app')
@include('Header')
@section('content')
<section class="container-menu">
    <h1 class="title">Módulo 1</h1>
    <div class="menu-item">
        <a href="/moduloDeterminado"  class="container-item determinante">
            <p class="title-item">Determinantes</p>
            <span class="subtitle-item">4 clases</span>
        </a>
        <a href="" class="container-item adjetivos">
            <p class="title-item">Adjetivos</p>
            <span class="subtitle-item">4 clases</span>  
        </a>
    </div>
    <div class="menu-item">
        <a href="" class="container-item preposiciones">
            <p class="title-item">Preposiciones</p>
            <span class="subtitle-item">4 clases</span>
        </a>
        <a href="" class="container-item conectores">
            <p class="title-item">Conectores</p>
            <span class="subtitle-item">4 clases</span>

        </a>
    </div>
</section>
@endsection
