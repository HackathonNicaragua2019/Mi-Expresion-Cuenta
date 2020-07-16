<?php

<<<<<<< HEAD
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
=======
namespace MiExpresionCuenta\Http\Controllers\Auth;

use MiExpresionCuenta\Http\Controllers\Controller;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
