@extends('layouts.app')
@section('content')
  <h1>Modulos</h1>
        <table>
			@foreach ($modulos as $app)
			<tr>
					<td>{{ $app->id}}</td>
					<td>{{ $app->nombre}}</td>
              		<td>{{ $app->descripcion}}</td>
			</tr>
			@endforeach
		</table>


@endsection