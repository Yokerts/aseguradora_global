<?php

namespace App\Models\Catalogos;

use Illuminate\Database\Eloquent\Model;

class EspecialidadesMedicas extends Model
{
    protected $fillable = [
        'id_cat_especialidad_medica',
        'especialidad_medica'
    ];
}
