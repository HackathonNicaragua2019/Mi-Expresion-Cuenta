@extends('layouts.app')
@section('content')
  <h1>Modulos 1</h1>
        <table>
			@foreach ($modulo1_temas as $mod1)
			<tr>
            		
					<td>{{ $mod1->NombreTemas}}</td>
              		<td>{{ $mod1->imagen}}</td>
			</tr>
			@endforeach
		</table>
<h1>Modulos 2</h1>
        <table>
			@foreach ($modulo2_temas as $mod2)
			<tr>
            		
					<td>{{ $mod2->NombreTemas}}</td>
              		<td>{{ $mod2->imagen}}</td>
			</tr>
			@endforeach
		</table>



@endsection