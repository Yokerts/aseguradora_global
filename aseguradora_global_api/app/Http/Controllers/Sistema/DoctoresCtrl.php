<?php

namespace App\Http\Controllers\Sistema;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\Sistema\Doctores;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\DB;

class DoctoresCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $doctores = Doctores::all();
        return response()->json(['doctores' => $doctores, 'success' => true, 'mensaje' => "Datos encontrados."], 200);
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

        if (property_exists($request, 'id_cat_especialidad_medica')) {


            $sql= DB::table('doctores')
                ->join('doctor_especialidades_medicas', 'doctor_especialidades_medicas.id_doctor', '=', 'doctores.id_doctor')
                ->join('cat_especialidades_medicas', ' doctor_especialidades_medicas.id_cat_especialidad_medica', '=', 'cat_especialidades_medicas.id_cat_especialidad_medica')
                ->select('doctores.id_doctor', 'doctores.nombre', 'cat_especialidades_medicas.especialidad_medica')
                ->where('doctores.id_doctor', '=', 1)
                ->get();

            dd($sql);

            return response()->json(['data' => $doctor, 'success' => true, 'mensaje' => "Guardado Correctamente"], 201);

        } else {

            $doctor = new Doctores([
                'nombre' => $request->nombre,
                'apellido_paterno' => $request->apellido_paterno,
                'apellido_materno' => $request->apellido_materno,
                'es_cliente' => $request->es_cliente
            ]);

            $doctor->save();
            return response()->json(['data' => $doctor, 'success' => true, 'mensaje' => "Guardado Correctamente"], 201);
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
        //$doctor = Doctores::find($id);
        $doctor = Doctores::where("id_doctor","=",$id)->get();
        $count = $doctor->count();
        if ($count > 0) {
            return response()->json(['data' => $doctor[0], 'success' => true, 'mensaje' => 'Datos encontrados'], 200);
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
