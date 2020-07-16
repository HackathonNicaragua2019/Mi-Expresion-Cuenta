@extends('layouts.app')
@section('content')

@foreach($modulos as $modulo)
<h1>{{$modulo->nombre}}</h1>
    @foreach($modulo->modulos as $tema)
    <p>{{$tema->nombre}}</p>
    @endforeach
@endforeach

@endsection