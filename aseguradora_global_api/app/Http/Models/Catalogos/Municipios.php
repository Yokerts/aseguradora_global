<?php

namespace App\Models\Catalogos;

use Illuminate\Database\Eloquent\Model;

class Municipios extends Model
{
    protected $fillable = [
        'id_cat_municipio',
        'id_cat_estado',
        'municipio'
    ];
}
