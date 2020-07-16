<?php

<<<<<<< HEAD
namespace App\Http\Controllers;

use Illuminate\Http\Request;
=======
namespace MiExpresionCuenta\Http\Controllers;

use Illuminate\Http\Request;
use MiExpresionCuenta\Home;
use MiExpresionCuenta\Modulo; 
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

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
<<<<<<< HEAD
        return view('home');
=======
        
        $modulos= Modulo::with(['modulos' => function ( $query ){
            $query->with(['temas']);
        }])
        ->whereHas('modulos')
        ->get();
        
        return view('home.index',compact('modulos'));
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
    }
}
