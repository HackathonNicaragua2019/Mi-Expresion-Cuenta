<?php

/*
|--------------------------------------------------------------------------
| Create The Application
|--------------------------------------------------------------------------
|
| The first thing we will do is create a new Laravel application instance
| which serves as the "glue" for all the components of Laravel, and is
| the IoC container for the system binding all of the various parts.
|
*/

$app = new Illuminate\Foundation\Application(
    realpath(__DIR__.'/../')
);

/*
|--------------------------------------------------------------------------
| Bind Important Interfaces
|--------------------------------------------------------------------------
|
| Next, we need to bind some important interfaces into the container so
| we will be able to resolve them when needed. The kernels serve the
| incoming requests to this application from both the web and CLI.
|
*/

$app->singleton(
    Illuminate\Contracts\Http\Kernel::class,
<<<<<<< HEAD
    App\Http\Kernel::class
=======
    MiExpresionCuenta\Http\Kernel::class
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
);

$app->singleton(
    Illuminate\Contracts\Console\Kernel::class,
<<<<<<< HEAD
    App\Console\Kernel::class
=======
    MiExpresionCuenta\Console\Kernel::class
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
);

$app->singleton(
    Illuminate\Contracts\Debug\ExceptionHandler::class,
<<<<<<< HEAD
    App\Exceptions\Handler::class
=======
    MiExpresionCuenta\Exceptions\Handler::class
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
);

/*
|--------------------------------------------------------------------------
| Return The Application
|--------------------------------------------------------------------------
|
| This script returns the application instance. The instance is given to
| the calling script so we can separate the building of the instances
| from the actual running of the application and sending responses.
|
*/

return $app;
