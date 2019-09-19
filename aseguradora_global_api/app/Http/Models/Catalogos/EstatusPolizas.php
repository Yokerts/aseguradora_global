<?php

namespace App\Models\Catalogos;

use Illuminate\Database\Eloquent\Model;

class EstatusPolizas extends Model
{
    protected $fillable = [
        'id_cat_estatus_poliza',
        'estatus_poliza',
    ];
}
