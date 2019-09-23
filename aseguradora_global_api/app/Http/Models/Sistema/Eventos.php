<?php

namespace App\Http\Models\Sistema;

use Illuminate\Database\Eloquent\Model;

class Eventos extends Model
{
    //protected $table = "eventos";
    protected $fillable = [
        "fecha_alta",
        "id_doctor_especialidad_medica",
        "polizas_id_poliza"
    ];
}
