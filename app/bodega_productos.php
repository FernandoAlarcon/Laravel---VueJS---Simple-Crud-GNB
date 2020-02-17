<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bodega_productos extends Model
{
    protected $fillable = ['Nombre_Producto','Bodega','Estados','Cantidad','Observaciones'];  /// le indicamos a la ruta de la BD cuantos campos va a leer en un solo objeto
    // protected $fillable = ['Bodega'];
    // protected $fillable = ['Estados'];
    // protected $fillable = ['Cantidad'];
    // protected $fillable = ['Observaciones'];
}
