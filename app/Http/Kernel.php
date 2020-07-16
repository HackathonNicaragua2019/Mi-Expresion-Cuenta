<?php

<<<<<<< HEAD
namespace App\Http;
=======
namespace MiExpresionCuenta\Http;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    /**
     * The application's global HTTP middleware stack.
     *
     * These middleware are run during every request to your application.
     *
     * @var array
     */
    protected $middleware = [
        \Illuminate\Foundation\Http\Middleware\CheckForMaintenanceMode::class,
        \Illuminate\Foundation\Http\Middleware\ValidatePostSize::class,
<<<<<<< HEAD
        \App\Http\Middleware\TrimStrings::class,
=======
        \MiExpresionCuenta\Http\Middleware\TrimStrings::class,
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
        \Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull::class,
    ];

    /**
     * The application's route middleware groups.
     *
     * @var array
     */
    protected $middlewareGroups = [
        'web' => [
<<<<<<< HEAD
            \App\Http\Middleware\EncryptCookies::class,
=======
            \MiExpresionCuenta\Http\Middleware\EncryptCookies::class,
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            // \Illuminate\Session\Middleware\AuthenticateSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
<<<<<<< HEAD
            \App\Http\Middleware\VerifyCsrfToken::class,
=======
            \MiExpresionCuenta\Http\Middleware\VerifyCsrfToken::class,
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ],

        'api' => [
            'throttle:60,1',
            'bindings',
        ],
    ];

    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    protected $routeMiddleware = [
        'auth' => \Illuminate\Auth\Middleware\Authenticate::class,
        'auth.basic' => \Illuminate\Auth\Middleware\AuthenticateWithBasicAuth::class,
        'bindings' => \Illuminate\Routing\Middleware\SubstituteBindings::class,
        'can' => \Illuminate\Auth\Middleware\Authorize::class,
<<<<<<< HEAD
        'guest' => \App\Http\Middleware\RedirectIfAuthenticated::class,
=======
        'guest' => \MiExpresionCuenta\Http\Middleware\RedirectIfAuthenticated::class,
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
        'throttle' => \Illuminate\Routing\Middleware\ThrottleRequests::class,
    ];
}
