@extends('layouts.app')
@section('content')
@include('HeaderActivity')


@foreach ($teoria as $app)
<section class="container-activity">
    <div class="activity">
        <h1 class="title aprender">{{ $app->titulo}}</h1>
        <p class="parrafos">{{ $app->introduccion}} </p>
        <figure class="container-banner">
            <img class="baner-aprender" src="{{ $app->imagen}}" alt="images sobre {{ $app->titulo}}">
        </figure>
        <h2 class="title aprender">{{ $app->pregunta}}</h2>
        <p class="parrafos">{{ $app->respuestapregunta}}</p>
        <p class="title aprender">Ejemplo</p>
        <p class="parrafos">{{ $app->ejemplos}}</p>
        <br>
        <iframe width="100%" height="auto" src="{{ $app->urlvideo}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    @endforeach
</section>
@endsection
