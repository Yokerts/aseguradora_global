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

Route::resource('/cat_paises', 'Catalogos\PaisesCtrl')->middleware('cors');
Route::resource('/cat_estados', 'Catalogos\EstadosCtrl')->middleware('cors');
Route::resource('/cat_municipios', 'Catalogos\MunicipiosCtrl')->middleware('cors');
Route::resource('/cat_estatus_polizas', 'Catalogos\EstatusPolizasCtrl')->middleware('cors');
Route::resource('/cat_especialidades_medicas', 'Catalogos\EspecialidadesMedicasCtrl')->middleware('cors');
Route::resource('/cat_segmentos_mercado', 'Catalogos\SegmentosMercadoCtrl')->middleware('cors');
Route::resource('/cat_sexos', 'Catalogos\SexosCtrl')->middleware('cors');

Route::resource('/empresas_aseguradoras', 'Sistema\EmpresasAseguradorasCtrl')->middleware('cors');
