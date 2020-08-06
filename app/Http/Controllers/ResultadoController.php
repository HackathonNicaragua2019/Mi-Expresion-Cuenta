<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;

class ResultadoController extends Controller
{
    public function show($id_resultado)
    {
        $resultado = Resultados::whereHas('user', function ($query) {
            $query->whereId(auth()->id());
        })->findOrFail($id_resultado);

        return view('actividades.resultado',compact('resultado'));
    }
}
