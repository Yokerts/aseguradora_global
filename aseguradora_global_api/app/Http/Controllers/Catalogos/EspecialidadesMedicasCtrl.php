<?php

namespace App\Http\Controllers\Catalogos;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\Catalogos\EspecialidadesMedicas;


class EspecialidadesMedicasCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $especialidades_medicas = EspecialidadesMedicas::all();
        return response()->json(['especialidades_medicas' => $especialidades_medicas, 'success' => true, 'mensaje' => "Datos encontrados."], 200);
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $especialidades_medicas = EspecialidadesMedicas::where("id_cat_especialidad_medica","=",$id)->get();
        $count = $especialidades_medicas->count();
        if ($count > 0) {
            return response()->json(['data' => $especialidades_medicas[0], 'success' => true, 'mensaje' => 'Datos encontrados'], 200);
        } else {
            return response()->json(['data' => [], 'success' => false, 'mensaje' => 'Datos no encontrados'], 204);
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
