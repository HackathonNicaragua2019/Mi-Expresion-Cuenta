<?php

<<<<<<< HEAD
namespace App\Http\Middleware;
=======
namespace MiExpresionCuenta\Http\Middleware;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as BaseVerifier;

class VerifyCsrfToken extends BaseVerifier
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        //
    ];
}
