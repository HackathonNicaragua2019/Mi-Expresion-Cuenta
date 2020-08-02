@extends('layouts.app')
@include('HeaderActivity')
@section('content')

<section class="container-activity">
@foreach ($teoria as $app)
    <div class="activity">
        <h1 class="title aprender">Introducción</h1>
        <p class="parrafos">{{ $app->introduccion}} </p>
        <img class="baner-aprender" src="/images/determinantes.svg" alt="images determinantes">
        <h2 class="title aprender">{{ $app->titulo}}</h2>
        <p class="parrafos">{{ $app->introduccion}}
            <br>
        </p>
        <h3 class="title aprender">{{ $app->nombrecorto}} </h3>
        <h3 class="title aprender">{{ $app->pregunta}}</h3>
        <p class="parrafos">{{ $app->respuestapregunta}}</p>
        <p class="title aprender">Ejemplo</p>
        <p class="parrafos">{{ $app->ejemplos}}</p>
        <br>
        <iframe width="560" height="315" src="{{ $app->urlvideo}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    @endforeach
</section>
@endsection
