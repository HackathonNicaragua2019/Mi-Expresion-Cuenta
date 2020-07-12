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


Route::resource('modulos','ModuloController');

Auth::routes();

Route::resource('home', 'HomeController');

Route::get('/moduloDeterminado', function () {
    return view('moduloDeterminado');
});
Route::get('/Actividades', function () {
    return view('Actividades');
});

Route::get('/ActividadesAprender', function () {
    return view('ActividadesAprender');
});