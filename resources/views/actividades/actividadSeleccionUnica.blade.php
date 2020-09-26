@extends('layouts.app')
@section('content')
@include('HeaderActivity')
<section class="container-activity">
    <form class="activity" method="POST">
        {!! csrf_field() !!}
        <div class="activity_pregunta_scroll_container">
            <div class="activity_pregunta_scroll">
        @foreach($actvidades as $actividad)
            @foreach($actividad->ActividadPreguntas as $pregunta)
            <div class="activity_pregunta">
            <h1 class="title">{{ $pregunta->nombre_pregunta }}</h1>
            <p class="enunciado"></p>
            <div class="container-respuestas">
                <div class="container-opciones">
                    <div for="opcion-por-defecto" class="pordefecto">
                        <p>Seleccione</p> 
                        <img class="icon_seleccione" src="/images/icon_flecha_lista.svg"/>
                    </div>
                    @foreach($pregunta->PreguntasOpciones as $opcion)
                            <input data-puntos="{{$opcion->puntos}}" name='preguntas[{{ $pregunta->id }}]' type="radio" id="opcion-{{$opcion->id}}" value="{{ $opcion->id }} @if(old("preguntas.$pregunta->id") == $opcion->id) checked @endif" required  onClick=validarRespuestaCorrecta('opcion-{{$opcion->id}}')>
                            <label for="opcion-{{$opcion->id}}" class="opcion">{{ $opcion->nombre }}</label>
                    @endforeach
                </div>
            <div class="container-img-text">
                <img class="img_pregunta" src="{{ $pregunta->url_imagen }}"/>
                <p>{{ $pregunta->nombre_imagen }}</p>
            </div>
        </div>
        </div>
            @endforeach
        @endforeach
        </div>
        </div>
        <div class="container-validacion">
                <button class="btn active comprobar" id="btn_comprobar">
                    Comprobar
                </button>
                <button  type="submit" class="btn btn-green guardar" id="btn_guardar">
                    Guardar actividad
                </button>
                
        </div>
    </form>
    @include('actividades.modalRespuestaCorrecta')
    @include('actividades.modalRespuestaIncorrecta')
</section>
@endsection