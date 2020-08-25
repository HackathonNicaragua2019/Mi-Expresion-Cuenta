@extends('layouts.app')
@section('content')
@include('HeaderActivity')


@foreach ($teoria as $app)
<section class="container-activity">
    <div class="activity">
        <h1 class="title aprender">Introducción</h1>
        <p class="parrafos">{{ $app->introduccion}} </p>
        <img class="baner-aprender" src="/images/determinantes.svg" alt="images determinantes">
        <h2 class="title aprender">{{ $app->titulo}}</h2>    
        <h3 class="title aprender">{{ $app->nombrecorto}} </h3>
        <h3 class="title aprender">{{ $app->pregunta}}</h3>
        <p class="parrafos">{{ $app->respuestapregunta}}</p>
        <p class="title aprender">Ejemplo</p>
        <p class="parrafos">{{ $app->imgejemplo}}</p>
        <p class="parrafos">{{ $app->ejemplos}}</p>
        <p class="parrafos">{{ $app->imgejemplo2}}</p>
        <p class="parrafos">{{ $app->ejemplos2}}</p>
        <p class="parrafos">{{ $app->imgejemplo3}}</p>
        <p class="parrafos">{{ $app->ejemplos3}}</p>
        <br>
        <iframe width="800" height="400" src="{{ $app->urlvideo}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    @endforeach
</section>
@endsection
