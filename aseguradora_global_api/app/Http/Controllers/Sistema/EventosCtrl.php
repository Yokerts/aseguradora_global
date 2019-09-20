<?php

namespace App\Http\Controllers\Sistema;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\Sistema\Eventos;
use App\Http\Models\Sistema\Polizas;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class EventosCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $eventos = Eventos::all();
        return response()->json(['eventos' => $eventos, 'success' => true, 'mensaje' => "Datos encontrados."], 200);
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
        $request = (Object)$request;

        $success = false;
        DB::beginTransaction();
        $success = false;

        try {
            $tabla = new Eventos;

            $datos = (object) $request;
            $poliza = Polizas::where('id_poliza', $datos->id_poliza)->first();

            if($poliza->cat_estatus_polizas_id_cat_estatus_poliza == 1) {
                $success = true;
            }

        } catch (\Exception $e){
            return response()->json($e->getMessage(), 500);
        }

        if ($success){
            DB::commit();
            return response()->json(["data" => $tabla, 'success' => true, "mensaje" => "Guardado Correctamente"], 201);
        } else{
            DB::rollback();
            return response()->json(['data' => [], "success" => false, "mensaje" => "Poliza no vigente"], 409);
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
