<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Resultados extends Model
{
    use SoftDeletes;

    public $table = 'resultados';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'user_id',
        'puntos_totales',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'id');
    }

    public function preguntas()
    {
        return $this->belongsToMany(Preguntas::class)->withPivot(['id_opcion', 'puntos']);
    }
}
