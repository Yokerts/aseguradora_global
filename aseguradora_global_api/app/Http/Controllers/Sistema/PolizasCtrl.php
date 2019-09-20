<?php

namespace App\Http\Controllers\Sistema;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\Sistema\Polizas;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class PolizasCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $polizas = Polizas::all();
        return response()->json(['polizas' => $polizas, 'success' => true, 'mensaje' => "Datos encontrados."], 200);
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
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request = Input::json()->all();
        $request = (Object)$request;

        $dt = new \DateTime($request->fecha_alta);   // <== instance from another API
        $dt_alta = Carbon::instance($dt);
        $dt = new \DateTime($request->fecha_inicio);   // <== instance from another API
        $dt_inicio = Carbon::instance($dt);   // <== instance from another API
        $dt = new \DateTime($request->fecha_fin);   // <== instance from another API
        $dt_fin = Carbon::instance($dt);
        //echo $carbon->toDateTimeString();

        $poliza = new Polizas([
            "fecha_alta" => $dt_alta->toDateTimeString(),
            "fecha_inicio" => $dt_inicio->toDateTimeString(),
            "fecha_fin" => $dt_fin->toDateTimeString(),
            "id_cat_vigencia" => $request->id_cat_vigencia ,
            "clientes_asegurados_id_cliente_asegurado" => $request->id_cliente_asegurado,
            "cat_estatus_polizas_id_cat_estatus_poliza" => $request->id_cat_estatus_poliza,
            "empresas_aseguradoras_id_empresa_aseguradora" => $request->id_empresa_seguradora,
            "cat_paises_id_cat_pais" => $request->id_cat_pais,
            "cat_municipios_id_cat_municipio" => $request->id_cat_municipio,
            "cat_estados_id_cat_estado" => $request->id_cat_estado
        ]);

//        dd($poliza);

        $poliza->save();
        return response()->json(['data' => $poliza, 'success' => true, 'mensaje' => "Guardado Correctamente"], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $poliza = Polizas::where("id_poliza","=",$id)->get();
        $count = $poliza->count();
        if ($count > 0) {
            return response()->json(['data' => $poliza[0], 'success' => true, 'mensaje' => 'Datos encontrados'], 200);
        } else {
            return response()->json(['data' => [], 'success' => false, 'mensaje' => 'Datos no encontrados'], 200);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
