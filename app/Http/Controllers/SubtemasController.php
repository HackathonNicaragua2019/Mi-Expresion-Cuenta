<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Temas;
use MiExpresionCuenta\Subtemas;

class SubtemasController extends Controller
{
    public function subtema( $modulo, $tema )
    {   
        $idtema = substr($tema,4,1);
        $temas = Temas::whereid($idtema)->get();
        $subtema= Subtemas::whereidtema($idtema)->get();
        
        return view('subtemas.subtemas',['temas'=>$temas,'subtema'=>$subtema]);
    }
}
