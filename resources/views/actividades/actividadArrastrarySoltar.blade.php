            <div class="container-respuestas complete-espacios">
                <div class="container-opciones complete-espacios">
                    <div class="opciones">
                    @foreach($pregunta->PreguntasOpciones as $opcion)
                            <input data-puntos="{{$opcion->puntos}}" data-nombre="{{ $opcion->nombre }}" name='preguntas[{{ $pregunta->id }}]' type="radio" id="opcion-{{$opcion->id}}" value="{{ $opcion->id }} @if(old("preguntas.$pregunta->id") == $opcion->id) checked @endif">
                            <label draggable="true" for="opcion-{{$opcion->id}}" class="opcion complete-espacios preguntas[{{ $pregunta->id }}]" ondragstart="validarArraste({{ $pregunta->id }}, {{$opcion->id}})" data-id='{{$opcion->id}}'>{{ $opcion->nombre }} </label>
                    @endforeach
                    </div>  
                </div>
                <div class="container-img-text complete-espacios">
                    <div class="caja-respuesta" data-nombre="preguntas[{{ $pregunta->id }}]" name="" id="caja-respuesta[{{ $pregunta->id }}]"  ></div>
                    <div class="img_container_pregunta">
                        <img class="img_pregunta" src="{{ $pregunta->url_imagen }}"/>
                        <p>{{ $pregunta->nombre_imagen }}</p>
                    </div>
                </div>
            </div>
            
