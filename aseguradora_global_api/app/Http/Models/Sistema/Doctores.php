<?php

namespace App\Http\Models\Sistema;

use Illuminate\Database\Eloquent\Model;

class Doctores extends Model
{
    //protected $table = "doctores";
    protected $fillable = [
        'nombre',
        'apellido_paterno',
        'apellido_materno',
        'es_cliente'
    ];
}
