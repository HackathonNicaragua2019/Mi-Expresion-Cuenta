<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Resultados;

class ResultadoController extends Controller
{
    public function show($id_resultado)
    {   
        $resultado = Resultados::
        whereid($id_resultado)
        ->get();
        
        return view('actividades.resultado',compact('resultado'));
    }
}
