<?php

/// documento creado por erick fernando alarcon duran
/// 3232853878

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Faker\Generator;

use App\bodega_productos;
use App\Bodegas;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

      $filtro = trim($request->get('filtro'));
      $query  = trim($request->get('query'));


      if ($filtro == '1') {
        $e     = '1';
        $signo = '=';
      }elseif ($filtro == '0') {

          $e = '0';
          $signo = '=';

      }else {
        $e = '3';
        $signo = '!=';
      }


        if ($query) {

          $tasks = bodega_productos::join("bodegas", "bodega_productos.bodega", "=", "bodegas.id_bodega")
            ->where('bodega_productos.Estados',$signo,$e)
            ->where('bodega_productos.Nombre_Producto','LIKE','%'.$query.'%')
            ->orWhere('bodegas.bodega','LIKE','%'.$query.'%')
            ->orWhere('bodega_productos.Cantidad','LIKE','%'.$query.'%')
            ->orWhere('bodega_productos.Observaciones','LIKE','%'.$query.'%')

            ->addSelect([
               "bodega_productos.Nombre_Producto",
               "bodegas.bodega AS Bodega",
               "bodega_productos.Cantidad",
               "bodega_productos.Observaciones",
               "bodega_productos.Estados",
               "bodega_productos.id_productos"
            ])
            ->orderBy('id_productos', 'DESC')->paginate(5);


          return [
              'pagination' => [
                  'total'         => $tasks->total(),
                  'current_page'  => $tasks->currentPage(),
                  'per_page'      => $tasks->perPage(),
                  'last_page'     => $tasks->lastPage(),
                  'from'          => $tasks->firstItem(),
                  'to'            => $tasks->lastItem(),
              ],
              'tasks' => $tasks,
              'filtro' => $filtro
          ];
        } else {

          $tasks = bodega_productos::join("bodegas", "bodega_productos.bodega", "=", "bodegas.id_bodega")
            ->where('bodega_productos.Estados',$signo,$e)
            ->addSelect([
               "bodega_productos.Nombre_Producto",
               "bodegas.bodega AS Bodega",
               "bodega_productos.Cantidad",
               "bodega_productos.Observaciones",
               "bodega_productos.Estados",
               "bodega_productos.id_productos"
            ])
            ->orderBy('id_productos', 'DESC')->paginate(5);

          return [
              'pagination' => [
                  'total'         => $tasks->total(),
                  'current_page'  => $tasks->currentPage(),
                  'per_page'      => $tasks->perPage(),
                  'last_page'     => $tasks->lastPage(),
                  'from'          => $tasks->firstItem(),
                  'to'            => $tasks->lastItem(),
              ],
              'tasks'  => $tasks
          ];
      }
    }

    public function store(Request $request)
    {
         $this->validate($request, [
           'Nombre_Producto' => 'required',
           'Bodega'=>'required',
           'Estados'=>'required',
           'Cantidad'=>'required',
           'Observaciones'
         ]);

         bodega_productos::create($request->all());
         return;
    }

    public function ActualizarDatos(Request $request){
          $ID            = trim($request->get('id_producto'));
          $Nombre        = trim($request->get('Nombre_Producto'));
          $Bodega        = trim($request->get('Bodega'));
          $Estado        = trim($request->get('Estados'));
          $Cantidad      = trim($request->get('Cantidad'));
          $Observaciones = trim($request->get('Observaciones'));

          $query = DB::update('UPDATE bodega_productos SET Nombre_Producto = ?, Bodega = ?, Estados = ?, Cantidad = ?, Observaciones = ? WHERE  id_productos = ?',[$Nombre,$Bodega,$Estado,$Cantidad,$Observaciones,$ID]);

          if (!$query) {
             $final = 'error-data';
         }else{
             $final = 'complete';
         }

         return  [ 'Config' =>  $final ];
    }

    public function update(Request $request, $id)
    {

        $state = trim($request->get('Estados'));
        DB::update('update bodega_productos set Estados = ? where id_productos = ?',[$state,$id]);

        return;

    }


    public function destroy($id_productos)
    {
      $results = bodega_productos::findOrFail($id_productos);
      $results->delete();
    }
}
