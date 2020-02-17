<?php

use Illuminate\Database\Seeder;
use App\bodega_productos;

class TaskTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       factory(Task::class, 5)->create();
    }
}
