<?php

namespace App\Http\Models\Sistema;

use Illuminate\Database\Eloquent\Model;

class Polizas extends Model
{
    //protected $table = "polizas";
    protected $fillable = [
        "fecha_alta",
        "fecha_inicio",
        "fecha_fin",
        "id_cat_vigencia",
        "clientes_asegurados_id_cliente_asegurado",
        "cat_estatus_polizas_id_cat_estatus_poliza",
        "empresas_aseguradoras_id_empresa_aseguradora",
        "cat_paises_id_cat_pais",
        "cat_municipios_id_cat_municipio",
        "cat_estados_id_cat_estado"
    ];

}
