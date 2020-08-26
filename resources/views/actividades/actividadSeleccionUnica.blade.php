@extends('layouts.actividades')
@section('content')
<header class="header activity">
    <a href="{{ URL::previous() }}" class="icons-container" @if (Request::is('home')) style="visibility :hidden " @endif>
        <img class="logo-header" src="/images/icon_back.svg"/>
        <span class="atras">Atras</span>
    </a>
    <div class="icons-container">
        <div class="icons" id='pista_actividad'>
            <span class="pistas" >Pistas</span>
            <img class="logo-header idea" src="/images/icon_idea.svg"/>
        </div>
    </div>
</header>
<section class="container-activity">
    <form class="activity" method="POST" action="">
        <div class="activity_pregunta_scroll_container">
            <div class="activity_pregunta_scroll">
        @foreach($actvidades as $actividad)</p>
            <p id="ActividadPista" style="display:none">{{ $actividad->pista }}</p>
            <p id="imagen_pista" style="display:none">{{ $actividad->img_pista }}</p>
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
                            <input name='preguntas[{{ $pregunta->id }}]' type="radio" id="opcion-{{$opcion->id}}" value="{{ $opcion->puntos }}" required onClick=validarRespuestaCorrecta('opcion-{{$opcion->id}}')>
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
                <button href="/modulo1_mi_expresion_basica/tema1" type="submit" class="btn btn-green guardar" id="btn_guardar">
                    Guardar actividad
                </button>
                
        </div>
    </form>
    @include('actividades.modalRespuestaCorrecta')
    @include('actividades.modalRespuestaIncorrecta')
    @include('actividades.modalPista')
</section>
@endsection