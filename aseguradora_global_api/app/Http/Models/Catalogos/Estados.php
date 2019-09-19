<?php

namespace App\Http\Models\Catalogos;

use Illuminate\Database\Eloquent\Model;

class Cat_Estados extends Model
{
    protected $fillable = [
        'id_cat_estado',
        'id_cat_pais',
        'estado'
    ];
}
