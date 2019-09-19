<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('/cat_paises', 'PaisesCtrl')->middleware('cors');
Route::resource('/cat_estados', 'EstadosCtrl')->middleware('cors');
Route::resource('/cat_municipios', 'MunicipiosCtrl')->middleware('cors');
Route::resource('/cat_estatus_polizas', 'EstatusPolizasCtrl')->middleware('cors');
Route::resource('/cat_especialidades_medicas', 'EspecialidadesMedicasCtrl')->middleware('cors');
Route::resource('/cat_segmentos_mercado', 'SegmentosMercadoCtrl')->middleware('cors');
Route::resource('/cat_sexos', 'SexosCtrl')->middleware('cors');
