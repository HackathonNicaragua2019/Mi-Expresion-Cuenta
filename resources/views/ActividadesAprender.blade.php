@extends('layouts.app')
@section('content')
<a href="{{ URL::previous() }}" class="icons-container">
        <img class="logo-header" src="/images/icon_back.svg"/>
        <span class="atras">Atras</span>
</a>
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
        <p class="parrafos">{{ $app->imgejemplo}}</p>
        <p class="parrafos">{{ $app->ejemplos}}</p>
        <p class="parrafos">{{ $app->imgejemplo2}}</p>
        <p class="parrafos">{{ $app->ejemplos2}}</p>
        <p class="parrafos">{{ $app->imgejemplo3}}</p>
        <p class="parrafos">{{ $app->ejemplos3}}</p>
        <br>
        <div class="videoWrapper" style="--aspect-ratio: 3 / 4;">
            <iframe src="{{ $app->urlvideo}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>
    @endforeach
</section>
@endsection
