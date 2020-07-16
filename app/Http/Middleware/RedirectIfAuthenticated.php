<?php

<<<<<<< HEAD
namespace App\Http\Middleware;
=======
namespace MiExpresionCuenta\Http\Middleware;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
            return redirect('/home');
        }

        return $next($request);
    }
}
