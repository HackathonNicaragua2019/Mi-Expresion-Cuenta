@extends('layouts.app')
@section('content')
<section>
<h1 class="title" >Texto a voz</h1>
	<label for="voces">Selecciona la voz:</label>
    <br>
   <select id="voces">
		</select>
		<br>
		<br>
		Escribe tu mensaje:<br>
		<textarea id="mensaje" cols="30" rows="5"></textarea>
		<br><br>
		<button id="btnEscuchar">Escuchar</button>
    <script src="/js/textovoz.js"></script>
 
	</section>


@endsection
