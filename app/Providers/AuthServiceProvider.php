<?php

<<<<<<< HEAD
namespace App\Providers;
=======
namespace MiExpresionCuenta\Providers;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
<<<<<<< HEAD
        'App\Model' => 'App\Policies\ModelPolicy',
=======
        'MiExpresionCuenta\Model' => 'MiExpresionCuenta\Policies\ModelPolicy',
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //
    }
}
