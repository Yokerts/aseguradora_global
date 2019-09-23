<?php

namespace App\Http\Controllers\Sistema;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class TransaccionesCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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

        if (property_exists($request, 'cant_clientes_mas_polizas')) {

            $clientes = DB::table('clientes_asegurados')
                ->select('clientes_asegurados.id_cliente_asegurado', 'clientes_asegurados.nombre', 'clientes_asegurados.apellido_paterno', 'clientes_asegurados.apellido_materno', DB::raw('count(polizas.clientes_asegurados_id_cliente_asegurado) as n_polizas'))
                ->join('polizas', 'clientes_asegurados.id_cliente_asegurado', '=', 'polizas.clientes_asegurados_id_cliente_asegurado')
                ->groupBy('clientes_asegurados.id_cliente_asegurado', 'clientes_asegurados.nombre','clientes_asegurados.apellido_paterno', 'clientes_asegurados.apellido_materno')
                ->orderBy('n_polizas')
                ->limit($request->cant_clientes_mas_polizas)
                ->get();

            $count = $clientes->count();
            if ($count > 0) {
                return response()->json(['data' => $clientes, 'success' => true, 'mensaje' => 'Datos encontrados'], 200);
            } else {
                return response()->json(['data' => [], 'success' => false, 'mensaje' => 'Datos no encontrados'], 200);
            }
        } else if (property_exists($request, 'cant_especialidades_mas_generadas')) {

            $sql1 = DB::table('polizas as p')
                ->select('p.id_doctor_especialidad_medica', 'catE.especialidad_medica', DB::raw('count(id_poliza) as n_polizas'))
                ->whereBetween('fecha_alta', ['20160101','20170101'])
                ->groupBy('p.id_doctor_especialidad_medica','catE.especialidad_medica')
                ->orderBy('n_polizas')
                ->join('doctor_especialidades_medicas as rel', 'rel.id_doctor_especialidad_medica', '=', 'p.id_doctor_especialidad_medica')
                ->join('empresas_aseguradoras as ea', 'ea.id_empresa_aseguradora', '=', 'rel.id_empresa_aseguradora')
                ->join('doctores as d', 'd.id_doctor', '=', 'rel.id_doctor')
                ->join('cat_especialidades_medicas as catE', 'catE.id_cat_especialidad_medica', '=', 'rel.id_cat_especialidad_medica')
                ->limit($request->cant_especialidades_mas_generadas);

            $polizas = DB::table('doctor_especialidades_medicas')
                ->joinSub($sql1, 'doc', function ($join) {
                    $join->on('doctor_especialidades_medicas.id_doctor_especialidad_medica', '=', 'doc.id_doctor_especialidad_medica');
                })
                ->get();


            $total_polizas = DB::table('polizas as p')
                ->select(DB::raw('count(id_poliza) as total_polizas'))
                ->whereBetween('fecha_alta', ['20160101','20170101'])
                ->get();

            for ($i=0;$i < $polizas->count(); $i++){
                $polizas[$i]->total_polizas = $total_polizas[0]->total_polizas;
                $polizas[$i]->porcentaje = (100 / $polizas[$i]->total_polizas) * $polizas[$i]->n_polizas;
            }

            $count = $polizas->count();
            if ($count > 0) {
                return response()->json(['data' => $polizas, 'success' => true, 'mensaje' => 'Datos encontrados'], 200);
            } else {
                return response()->json(['data' => [], 'success' => false, 'mensaje' => 'Datos no encontrados'], 200);
            }

        } else {
            return response()->json(['data' => [], 'success' => false, 'mensaje' => "Datos no encontrados"], 201);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
