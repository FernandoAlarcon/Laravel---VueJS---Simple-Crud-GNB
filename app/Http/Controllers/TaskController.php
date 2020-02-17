<?php

/// documento creado por erick fernando alarcon duran
/// 3232853878

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\bodega_productos;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request) {
          $query = trim($request->get('query'));
          $tasks = bodega_productos::where('Nombre_Producto','LIKE','%'.$query.'%')
            ->orWhere('Bodega','LIKE','%'.$query.'%')
            ->orWhere('Cantidad','LIKE','%'.$query.'%')
            ->orWhere('Observaciones','LIKE','%'.$query.'%')
            ->orWhere('Estados','LIKE','%'.$query.'%')
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
              'tasks' => $tasks
          ];
        }else {
          $tasks = bodega_productos::orderBy('id_productos', 'DESC')->paginate(3);

          return [
              'pagination' => [
                  'total'         => $tasks->total(),
                  'current_page'  => $tasks->currentPage(),
                  'per_page'      => $tasks->perPage(),
                  'last_page'     => $tasks->lastPage(),
                  'from'          => $tasks->firstItem(),
                  'to'            => $tasks->lastItem(),
              ],
              'tasks' => $tasks
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

    public function update(Request $request, $id)
    {
        // $this->validate($req,[
        //   'Estados' => 'required'
        // ]);
        // bodega_productos::find($id)->update($req->all());

        // $consulta = bodega_productos::findOrFail($id);
        // $consulta->where('id_productos', $id)
        // $consulta->Estado=$req->get('Estados')
        // $consulta->update($req->all());
        $state = trim($request->get('Estados'));
        //$tasks = bodega_productos::where('id_productos','=', '22')->update(['Estado' => '1']);
        DB::update('update bodega_productos set Estados = ? where id_productos = ?',[$state,$id]);
        //echo "Record updated successfully.";
        //$req->get('Estados');
        return;
        //return $this->sendResponse('request retrieved');

        //return Redirect::to('almacen/categoria');
        // $sales = bodega_productos::find($id);
        // $sa
        // $sales->Estados = $req['Estados'];
        // $sales->update();
    }


    public function destroy($id_productos)
    {
      $results = bodega_productos::findOrFail($id_productos);
      $results->delete();
    }
}
