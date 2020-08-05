<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Teoria;
use MiExpresionCuenta\Temas;
use MiExpresionCuenta\Subtemas;

class TeoriaController extends Controller
{

    public function TeoriaTemas($idteoria)
    {

        $temas = "temas";
        
        $teoria= Teoria::with(['teoria' => function ( $query ){
            $query->with(['temas'] );            
        }])
        ->whereHas('teoria')
        ->where('id','=', $idteoria)
        ->get(); 
        return view('ActividadesAprender',compact('teoria'));
    }
    

    public function TeoriaSubtemas($subtema, $idsubtema)
    {
        $teoria= Teoria::with(['teoriasubtemas' => function ( $query ){
            $query->with(['Subtemas'] );
            
        }])
        ->whereHas('teoriasubtemas')
        ->where('id','=', $idsubtema)
        ->get();
        
        return view('ActividadesAprender',compact('teoria'));

    }
    



}
