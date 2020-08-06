<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Opciones extends Model
{
    use SoftDeletes;

    public $table = 'opciones';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'nombre',
        'puntos',
        'id_pregunta',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function pregunta()
    {
        return $this->belongsTo(Preguntas::class, 'id_pregunta');
    }
}
