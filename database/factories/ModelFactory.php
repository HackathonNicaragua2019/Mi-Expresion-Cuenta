<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
<<<<<<< HEAD
$factory->define(App\User::class, function (Faker\Generator $faker) {
=======
$factory->define(MiExpresionCuenta\User::class, function (Faker\Generator $faker) {
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});
