<?php

namespace App\Http\Controllers\Sistema;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\Sistema\ClientesAsegurados;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use PhpParser\Comment\Doc;

class ClientesAseguradosCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $clientes_asegurados = ClientesAsegurados::all();
        return response()->json(['clientes_asegurados' => $clientes_asegurados, 'success' => true, 'mensaje' => "Datos encontrados."], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request = Input::json()->all();
        $request = (Object) $request;

        $cliente = new ClientesAsegurados([
            "nombre" => $request->nombre,
            "apellido_paterno" => $request->apellido_paterno,
            "apellido_materno" => $request->apellido_materno,
            "fecha_nacimiento" => $request->fecha_nacimiento,
            "codigo_postal" => $request->codigo_postal,
            "direccion" => $request->direccion,
            "rfc" => $request->rfc,
            "cat_segmentos_mercado_id_cat_segmento_mercado" => $request->id_cat_segmento_mercado,
            "cat_sexos_id_cat_sexo" => $request->cat_sexos_id_cat_sexo,
            "cat_paises_id_cat_pais" => $request->cat_paises_id_cat_pais,
            "cat_municipios_id_cat_municipio" => $request->cat_municipios_id_cat_municipio,
            "cat_estados_id_cat_estado" => $request->cat_estados_id_cat_estado,
            "id_empresa_aseguradora" => $request->id_empresa_aseguradora
        ]);

        $cliente->save();
        return response()->json(['data' => $cliente, 'success' => true, 'mensaje' => "Guardado Correctamente"], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $cliente = ClientesAsegurados::where("id_cliente_asegurado","=",$id)->get();
        $count = $cliente->count();
        if ($count > 0) {
            return response()->json(['data' => $cliente[0], 'success' => true, 'mensaje' => 'Datos encontrados'], 200);
        } else {
            return response()->json(['data' => [], 'success' => false, 'mensaje' => 'Datos no encontrados'], 200);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
