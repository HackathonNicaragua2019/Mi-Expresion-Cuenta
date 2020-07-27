@extends('layouts.app')
@section('content')
@include('HeaderActivity')
<section class="container-activity">
    <form class="activity" method="POST" action="">
        @foreach($actvidades as $actividad)
        @foreach($actividad->ActividadPreguntas as $pregunta)
        <h1 class="title">{{ $pregunta->nombre_pregunta }}</h1>
        <p class="enunciado"></p>
        <div class="container-respuestas">
            <img class="img_pregunta" src="/images/posesivo.svg"/>
            <div class="container-opciones">
            <div for="opcion-por-defecto" class="pordefecto">
                <p>Seleccione</p> 
                <img class="icon_seleccione" src="/images/icon_flecha_lista.svg"/>
            </div>
        @foreach($pregunta->PreguntasOpciones as $opcion)
                <input name='' type="hidden" id="opcion-{{$opcion->id}}">
                <label for="opcion-{{$opcion->id}}" class="opcion">{{ $opcion->nombre }}</label>
        @endforeach
            </div>
        </div>
        @endforeach
        @endforeach
        <div class="container-validacion">
                <button class="btn active comprobar">
                    Comprobar
                </button>
                <button class="btn btn-green siguiente">
                    Siguiente
                </button>
        </div>
    </form>
</section>
@endsection