@extends('app')
@section('content')

    <div id="survivor" class="row">
        <div class="col-sm-12">
          <h1 class="page-header" > Datos </h1>
        </div>
        <div class="col-sm-12">
          <div class="form-group">
            <input type="text" class="form-control" v-model="query" v-on:keyup="getKey()" name="" placeholder=" " value="">
          </div>
          <div class="form-group float-right">
            <a href="#" class="btn btn-primary pull-right"  data-toggle="modal" data-target="#create" >
               Nuevo Registro
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
                <th scope="col">Observaciones</th>
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
          @include('create')
        </div>

    </div>

@endsection
