@extends('layouts.app')
@include('HeaderActivity')
@section('content')

<section class="container-activity">
    <div class="activity">
        <h1 class="title aprender">Introducción</h1>
        <img class="baner-aprender" src="/images/determinantes.svg" alt="images determinantes">
        <h2 class="title aprender">Los determinantes</h2>
        <p class="parrafos">
    
        <table>
			@foreach ($teoria as $app)
			<tr>
					<td>{{ $app->id}}</td>
					<td>{{ $app->titulo}}</td>
              		<td>{{ $app->Descripcion}}</td>
			</tr>
			@endforeach
		</table>
                <br>
            <br>
        </p>
        <h3 class="title aprender">¿Qué son los determinantes?</h3>
        <p class="parrafos">Los determinantes son palabras que van delante del nombre o sustantivos y sirven para delimitar
            el significado general de dicho nombre. Los determinantes concuerdan siempre en género y
            número con los sustantivos que acompañan.
        </p>
        <br>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/zeYS3xsyRGI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
</section>
@endsection
