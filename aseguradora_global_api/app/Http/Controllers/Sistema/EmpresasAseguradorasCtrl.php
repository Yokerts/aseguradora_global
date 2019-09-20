<?php

namespace App\Http\Controllers\Sistema;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\Sistema\EmpresasAseguradoras;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;


class EmpresasAseguradorasCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $empresas_aseguradoras = EmpresasAseguradoras::all();
        return response()->json(['empresas_aseguradoras' => $empresas_aseguradoras, 'success' => true, 'mensaje' => "Datos encontrados."], 200);
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

        //dd($request);

        $empresa = new EmpresasAseguradoras([
            'empresa_aseguradora' => $request->empresa_aseguradora
        ]);

        $empresa->save();
        return response()->json(['data' => $empresa, 'success' => true, 'mensaje' => "Guardado Correctamente"], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $empresa = EmpresasAseguradoras::where("id_empresa_aseguradora","=",$id)->get();
        $count = $empresa->count();
        if ($count > 0) {
            return response()->json(['data' => $empresa[0], 'success' => true, 'mensaje' => 'Datos encontrados'], 200);
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
