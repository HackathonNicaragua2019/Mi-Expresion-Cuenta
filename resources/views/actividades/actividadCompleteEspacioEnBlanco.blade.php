            <div class="container-respuestas complete-espacios">
                <div class="container-opciones complete-espacios">
                    <div class="opciones">
                    @foreach($pregunta->PreguntasOpciones as $opcion)
                            <input data-puntos="{{$opcion->puntos}}" data-nombre="{{ $opcion->nombre }}" name='preguntas[{{ $pregunta->id }}]' type="radio" id="opcion-{{$opcion->id}}" value="{{ $opcion->id }} @if(old("preguntas.$pregunta->id") == $opcion->id) checked @endif">
                            <label for="opcion-{{$opcion->id}}" class="opcion complete-espacios">{{ $opcion->nombre }}</label>
                    @endforeach
                    </div>  
                </div>
                <div class="container-img-text complete-espacios">
                    <input class="input-respuesta" data-puntos="" data-nombre="preguntas[{{ $pregunta->id }}]" name="" type="text" id="input-respuesta[{{ $pregunta->id }}]" value="" placeholder="Escribe aqui" onchange="validarRespuestaCorrectaComplete({{ $pregunta->id }})">
                    <div class="img_container_pregunta">
                        <img class="img_pregunta" src="{{ $pregunta->url_imagen }}"/>
                        <p>{{ $pregunta->nombre_imagen }}</p>
                    </div>
                </div>
            </div>
            
