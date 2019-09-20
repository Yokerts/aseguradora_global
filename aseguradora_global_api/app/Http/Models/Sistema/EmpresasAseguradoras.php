<?php

namespace App\Http\Models\Sistema;

use Illuminate\Database\Eloquent\Model;

class EmpresasAseguradoras extends Model
{
    //protected $table = "empresas_aseguradoras";
    public $timestamps = false;
    protected $fillable = [
        'empresa_aseguradora',
    ];
}
