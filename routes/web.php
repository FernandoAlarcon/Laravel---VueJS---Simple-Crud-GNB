<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/// documento creado por erick fernando alarcon duran
/// 3232853878
/// archivo de rutas ///
use App\bodega_productos;
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('dashboard');
});

Route::resource('products', 'TaskController',['except'=>'edit']);

Route::get('Update_Products', 'TaskController@ActualizarDatos');

// Route::get('/products/update/{id}', function (Request $request, $id) {
//
//   $this->validate($req,[
//     'Estados' => 'required'
//   ]);
//
//   bodega_productos::find($id)->update($req->all());
//
//   return;
// });
