<?php

namespace App\Http\Models\Sistema;

use Illuminate\Database\Eloquent\Model;

class ClientesAsegurados extends Model
{
//    protected $table = "clientes_asegurados";
    protected $fillable = [
        'nombre',
        'apellido_paterno',
        'apellido_materno',
        'fecha_nacimiento',
        'codigo_postal',
        'direccion',
        'rfc',
        'cat_segmentos_mercado_id_cat_segmento_mercado',
        'cat_sexos_id_cat_sexo',
        'cat_paises_id_cat_pais',
        'cat_municipios_id_cat_municipio',
        'cat_estados_id_cat_estado',
        'id_empresa_aseguradora'
    ];

}
