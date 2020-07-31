<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Teoria;
use MiExpresionCuenta\Temas;

class TeoriaController extends Controller
{

    public function index($idteoria)
    {
        
        $teoria= Teoria::with(['teoria' => function ( $query ){
            $query->with(['temas'] );
            
        }])
        ->whereHas('teoria')
        ->where('id','=', $idteoria)
        ->get();
        
        return view('ActividadesAprender',compact('teoria'));
    }
    
    
}
