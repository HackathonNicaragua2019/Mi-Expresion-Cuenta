<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Actividades extends Model
{
    use SoftDeletes;

    public $table = 'actividades';

    protected $fillable = [
        'nombre',
        'nombrecorto',
        'descrpcion',
        'idsubtema',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function ActividadPreguntas(){
        return $this->hasMany(Preguntas::class,'id_actividad','id');
    }
}
