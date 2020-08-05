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

Route::get('home', 'HomeController@index')->name('home');

Route::get('/{modulo}/{tema}', 'SubtemasController@subtema')->name('subtema');

Route::get('/ActividadesAprender{idteoria}', 'TeoriaController@TeoriaTemas')->name('teoria');
Route::get('/ActividadesAprender/{subtema}/{idsubtema}', 'TeoriaController@TeoriaSubtemas')->name('teoria');

Route::get('/actividad{idsubtema}', 'ActividadesController@index')->name('actividades');

/*
Route::get('/moduloDeterminado', function () {
    return view('moduloDeterminado');
});
Route::get('/Actividades', function () {
    return view('Actividades');
});
*/

