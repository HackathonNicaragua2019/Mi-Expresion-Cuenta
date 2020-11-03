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
    <form class="activity" method="POST">
        {!! csrf_field() !!}
        <div class="activity_pregunta_scroll_container">
            <div class="activity_pregunta_scroll">
                @foreach($actvidades as $actividad)
                    <p id="ActividadPista" style="display:none">{{ $actividad->pista }}</p>
                    <p id="imagen_pista" style="display:none">{{ $actividad->img_pista }}</p>
                    @foreach($actividad->ActividadPreguntas as $pregunta)
                    <div class="activity_pregunta">
                        <h1 class="title">{{ $pregunta->nombre_pregunta }}</h1>
                        <p class="enunciado"></p>
                        @if ( $pregunta->tipo_pregunta === "complete_espacios_blanco" )
                            @include('actividades.actividadCompleteEspacioEnBlanco')
                        @elseif ( $pregunta->tipo_pregunta === "subrayar" )
                            @include('actividades.actividadSubraye')
                        @else
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
                        @endif
                    </div>
                    @endforeach
                @endforeach
            </div>
        </div>
        <div class="container-validacion">
            <button class="btn comprobar" id="btn_comprobar">
                Comprobar
            </button>
            <button  type="submit" class="btn btn-green guardar" id="btn_guardar">
                 Guardar actividad
            </button>
        </div>
    </form>
    @include('actividades.modalRespuestaCorrecta')
    @include('actividades.modalRespuestaIncorrecta')
    @include('actividades.modalPista')
</section>
@endsection