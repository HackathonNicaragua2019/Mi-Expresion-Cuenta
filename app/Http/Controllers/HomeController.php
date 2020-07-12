<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Home; 
use DB;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $modulo1_temas= DB::table('temas as tm')
        ->join('modulos as md', 'md.id', '=','tm.idmodulo')
        ->select('md.nombre as Modulo ','tm.nombre as NombreTemas','tm.imagen' )
        ->where('md.id','=','1')
        ->orderBy('tm.id','asc')
        ->get();

        $modulo2_temas= DB::table('temas as tm')
        ->join('modulos as md', 'md.id', '=','tm.idmodulo')
        ->select('md.nombre as Modulo ','tm.nombre as NombreTemas','tm.imagen' )
        ->where('md.id','=','2')
        ->orderBy('tm.id','asc')
        ->get();
        
        return view('home.index',['modulo1_temas' => $modulo1_temas, 'modulo2_temas' => $modulo2_temas]);
    }
}
