<?php

namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Home;
use MiExpresionCuenta\Modulo;


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
        
        $modulos= Modulo::with(['modulos' => function ( $query ){
            $query->with(['temas']);
        }])
        ->whereHas('modulos')
        ->get();
        
        return view('home.index',compact('modulos'));
    }


}
