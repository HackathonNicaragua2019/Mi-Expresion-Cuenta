<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Preguntas extends Model
{
    use SoftDeletes;

    public $table = 'preguntas';

    protected $fillable = [
        'nombre_pregunta',
        'url_imagen',
        'nombre_imagen',
        'id_actividad',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function PreguntasOpciones(){
        return $this->hasMany(Opciones::class,'id_pregunta','id');
    }

    public function PreguntasResultados(){
        return $this->belongsToMany(Resultados::class);
    }

    public function Actividades(){
        return $this->belongsTo(Actividades::class,'id');
    }
}
