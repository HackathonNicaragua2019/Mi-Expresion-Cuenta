<?php

<<<<<<< HEAD
namespace App\Http\Middleware;
=======
namespace MiExpresionCuenta\Http\Middleware;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

use Illuminate\Foundation\Http\Middleware\TrimStrings as BaseTrimmer;

class TrimStrings extends BaseTrimmer
{
    /**
     * The names of the attributes that should not be trimmed.
     *
     * @var array
     */
    protected $except = [
        'password',
        'password_confirmation',
    ];
}
