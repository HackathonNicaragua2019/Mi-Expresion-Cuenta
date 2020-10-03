@extends('layouts.app')
@section('content')
<section class="modal active resultado">
        <div class="contaner_modal resultado">
            <p class="titulo">¡ Felicidades haz completado la 1er actividad !</p>
            <img src="/images/icon_actividad_completada.svg" alt="icono respuesta correcta" class="icon icon_resultado">
            @foreach($resultado as $result)
            <p class="subtitulo resultado">Haz obtenido <strong>{{$result->puntos_totales}}</strong> pts </p>
            @endforeach
            <div class="containerBtn">
                <button onclick="window.location.href='/home';" class="btn btn-white color-black" id="btn_siguiente">
                            volver
                </button>
            </div>
        </div>          
</section>
@endsection