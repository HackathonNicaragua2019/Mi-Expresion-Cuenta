<?php

<<<<<<< HEAD
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
=======
namespace MiExpresionCuenta\Http\Controllers\Auth;

use MiExpresionCuenta\Http\Controllers\Controller;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }
}
