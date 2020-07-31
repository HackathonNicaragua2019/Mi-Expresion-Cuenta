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
     'Descripcion',
     'imagen'
 ];

 public function teoria()
 {
     return $this->hasMany(Temas::class, 'idteoria', 'id');
 }

}
