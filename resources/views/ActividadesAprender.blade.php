@extends('layouts.app')
@section('content')
<header class="header activity">
    <a href="{{ URL::previous() }}" class="icons-container icon-bg-white">
        <img class="logo-header" src="/images/icon_back.svg"/>
        <span class="atras">Atras</span>
    </a>
</header>
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
        <figure class="container-banner">
            <img class="baner-aprender" src="{{ $app->imgejemplo}}" alt="images sobre {{ $app->titulo}}">
        </figure>
        
        <p class="parrafos">{{ $app->ejemplos}}</p>

        <figure class="container-banner">
            <img class="baner-aprender" src="{{ $app->imgejemplo2}}" alt="images sobre {{ $app->titulo}}">
        </figure>
        
        <p class="parrafos">{{ $app->ejemplos2}}</p>

        <figure class="container-banner">
            <img class="baner-aprender" src="{{ $app->imgejemplo3}}" alt="images sobre {{ $app->titulo}}">
        </figure>
      
        <p class="parrafos">{{ $app->ejemplos3}}</p>
        <br>
        <div class="videoWrapper" style="--aspect-ratio: 3 / 4;">
            <iframe src="{{ $app->urlvideo}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>
    @endforeach
</section>
@endsection
