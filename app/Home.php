<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;

class Home extends Model
{
    public $table = 'temas';
    protected $primarykey ='id';
    public $timestamps = true;
    protected $fillable = [
        'nombre',
        'descripcion',
        'imagen',
        'idmodulo'
    ];
}
