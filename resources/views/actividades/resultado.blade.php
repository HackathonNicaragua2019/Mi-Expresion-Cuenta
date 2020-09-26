@extends('layouts.app')
@section('content')

<section class="container-activity">
    @foreach($resultado as $resul)
    <p>Resultado  {{ $resul->puntos_totales }}</p>
    @endforeach
</section>
@endsection