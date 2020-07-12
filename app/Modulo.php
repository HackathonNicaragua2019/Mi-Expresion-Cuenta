<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;

class Modulo extends Model
{
    public $table = 'modulos';

    protected $primaryKey='id';

    public $timestamps=true;

    protected $fillable = [
        'nombre',
        'descripcion'
    ];
}
