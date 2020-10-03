@extends('app')
@section('content')

    <div id="survivor" class="row">
        <div class="col-sm-12">
          <h1 class="page-header" > Gestion de Productos </h1>
        </div>
        <div class="col-sm-12">
          <div class="row">
            <div class="form-group col-sm-4">
              <b>Nombre del Producto</b> (Nombre, Estado, Cantidad, Descripcion, Bodega)
              <input type="text" class="form-control" placeholder="Escribe Aqui" v-model="query" v-on:keyup="getKey()" name="" placeholder=" " value="">
            </div>
          </div>
          <div class="form-group">
            <div class="custom-control custom-checkbox">
              <input type="checkbox" name="Data" class="custom-control-input" v-on:click.prevent="ChoseSelection('3')"  id="customCheck1">
              <label class="custom-control-label" for="customCheck1">Mostrar Todos</label>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" name="Data" class="custom-control-input" v-on:click.prevent="ChoseSelection('1')" id="customCheck2">
              <label class="custom-control-label" for="customCheck2">Activos</label>
            </div>
            <div class="custom-control custom-checkbox">
              <input type="checkbox" name="Data" class="custom-control-input" v-on:click.prevent="ChoseSelection('0')" id="customCheck3">
              <label class="custom-control-label" for="customCheck3">Inactivos</label>
            </div>
          </div>
          <div class="form-group float-right">

            <a href="#" class="btn btn-primary pull-right"  data-toggle="modal" data-target="#create" >
               Crear Producto
            </a>
          </div>
        </div>
        <div class="col-sm-12">

          <table class="table table-hover table-striped" >
            <thead>
              <tr>
                <th scope="col">Nombre </th>
                <th scope="col">Bodega</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Editar</th>
                <th scope="col">Estado</th>
                <th colspan="2" >
                    &nbsp;
                </th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="product of products" >
                <td> @{{product.Nombre_Producto}} </td>
                <td> @{{product.Bodega}} </td>
                <td> @{{product.Cantidad}} </td>
                <td> @{{product.Observaciones}} </td>
                <td>
                    <button type="button"
                            class="btn btn-warning"
                            name="button"
                            data-toggle="modal"
                            data-target="#update"
                             v-on:click.prevent="updateDates(product)">
                      <i class="glyphicon glyphicon-pencil" ></i>
                      Editar
                    </button>
                </td>
                <td width="10px" >

                  <button type="button" v-if="product.Estados === '0'" class="btn btn-danger" v-on:click.prevent="updateProducts(product)" name="button">
                    Desactivado
                  </button>
                  <button type="button" v-if="product.Estados === '1'" class="btn btn-success" v-on:click.prevent="updateProducts(product)" name="button">
                    Activado
                  </button>



                </td>
              </tr>
            </tbody>
          </table>
          <nav>
      			<ul class="pagination">
      				<li v-if="pagination.current_page > 1">
      					<a href="#" class="btn btn-dark btn-ls" @click.prevent="changePage(pagination.current_page - 1)">
      						<span>Atras</span>
      					</a>
      				</li>

      				<li v-for="page in pagesNumber" v-bind:class="[ page == isActived ? 'active' : '']">
      					<a href="#" class="btn btn-warning btn-ls" @click.prevent="changePage(page)">
      						@{{ page }}
      					</a>
      				</li>

      				<li v-if="pagination.current_page < pagination.last_page">
      					<a href="#" class="btn btn-dark btn-ls" @click.prevent="changePage(pagination.current_page + 1)">
      						<span>Siguiente</span>
      					</a>
      				</li>
      			</ul>
      		</nav>
          @include('modales')
        </div>

    </div>

@endsection
