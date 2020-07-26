@extends('layouts.app')
@section('content')
@include('HeaderActivity')

<form method="POST" action="">
                        @csrf
                        @foreach($actvidades as $actividad)
                            <div class="card mb-3">
                                <div class="card-header">{{ $actividad->nombre }}</div>
                
                                <div class="card-body">
                                    @foreach($actividad->ActividadPreguntas as $pregunta)
                                        <div class="card @if(!$loop->last)mb-3 @endif">
                                            <div class="card-header">{{ $pregunta->nombre_pregunta }}</div>
                        
                                            <div class="card-body">
                                                <input type="hidden" name="" value="">
                                                @foreach($pregunta->PreguntasOpciones as $opcion)
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" name="" id="" value="">
                                                        <label class="form-check-label" for="">
                                                            {{ $opcion->nombre }}
                                                        </label>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
</form>

@endsection