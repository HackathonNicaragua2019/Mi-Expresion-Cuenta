<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Actividades;
use MiExpresionCuenta\Opciones;


class ActividadesController extends Controller
{
    public function index( $idsubtema ){
        
        $actvidades = Actividades::with(['ActividadPreguntas' => function ( $query ) {
            $query->inRandomOrder()
            ->with(['PreguntasOpciones' => function( $query ){
                $query->inRandomOrder();
            }]);
        }])
        ->whereHas('ActividadPreguntas')
        ->where('idsubtema','=', $idsubtema)
        ->get();
        
    
        return view('actividades.actividadSeleccionUnica', compact('actvidades'));
    }
}
