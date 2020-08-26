<?php

<<<<<<< HEAD
namespace App\Providers;
=======
namespace MiExpresionCuenta\Providers;
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

use Illuminate\Support\Facades\Event;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
<<<<<<< HEAD
        'App\Events\Event' => [
            'App\Listeners\EventListener',
=======
        'MiExpresionCuenta\Events\Event' => [
            'MiExpresionCuenta\Listeners\EventListener',
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();

        //
    }
}
