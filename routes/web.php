<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

<<<<<<< HEAD
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
=======

Route::resource('modulos','ModuloController');

Auth::routes();

//Route::resource('home', 'HomeController');
Route::get('home', 'HomeController@index')->name('home');

>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98

Route::get('/moduloDeterminado', function () {
    return view('moduloDeterminado');
});
Route::get('/Actividades', function () {
    return view('Actividades');
});
<<<<<<< HEAD
=======

Route::get('/ActividadesAprender', function () {
    return view('ActividadesAprender');
});
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
