@extends('layouts.app')
@include('HeaderActivity')
@section('content')

<section class="container-activity">
    <div class="activity">
        <h1 class="title">¿Cuál es el determinante?</h1>
        <p class="enunciado">Cogieron unas manzanas de ahí.</p>
        <div class="container-respuestas">
            <button class="btn respuesta">
                unas
            </button>
            <button class="btn respuesta">
                de
            </button>
            <button class="btn respuesta">
                ahí     
            </button>
        </div>
        <div class="container-validacion">
                <button class="btn active comprobar">
                    Comprobar
                </button>
                <button class="btn btn-green siguiente">
                    Siguiente
                </button>
        </div>
    </div>
</section>
@endsection
