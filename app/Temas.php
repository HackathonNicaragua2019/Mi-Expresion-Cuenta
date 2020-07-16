<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;

class Temas extends Model
{
    public $table = 'temas';

    protected $primaryKey='id';

    public $timestamps=true;

    protected $fillable = [
        'nombre',
        'descripcion',
        'imagen',
        'idmodulo',
    ];

    public function temas()
    {
        return $this->belongsTo(Modulo::class, 'idmodulo');
    }
}
