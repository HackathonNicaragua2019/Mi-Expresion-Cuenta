<?php

namespace MiExpresionCuenta;

use Illuminate\Database\Eloquent\Model;

class Teoria extends Model
{
 public $table = 'teoria';

 protected $primarykey = 'id';

 public $timestamps = true;
 
 protected $fillable =[
     'titulo',
     
     'imagen',
     'introduccion',
     'pregunta',
     'respuestapregunta',
     'imgejemplo',
     'ejemplos2',
     'ejemplos3',
     'imgejemplo',
     'imgejemplo2',
     'imgejemplo3',
     'urlvideo'

 ];

 public function teoria()
 {
     return $this->hasMany(Temas::class, 'idteoria', 'id');
     
 }
 public function teoriasubtemas()
 {
     return $this->hasMany(Subtemas::class, 'idteoria', 'id');
 }


}

