<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBodegaProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bodega_productos', function (Blueprint $table) {
            $table->bigIncrements('id_productos');
            $table->string('Nombre_Producto');
            $table->string('Bodega');
            $table->string('Estados');
            $table->string('Cantidad');
            $table->string('Observaciones');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bodega_productos');
    }
}
