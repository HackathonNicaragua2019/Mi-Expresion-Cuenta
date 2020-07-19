<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;

class Subtemas extends Model
{
    public $table = 'subtemas';

    protected $primarykey = 'id';

    public $timestamps = true;

    protected $fillable = [
        'nombre',
        'descripcion',
        'imagen',
        'idtema',
    ];
}
