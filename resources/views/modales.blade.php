<div class="modal fate" id="create" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" name="button" data-dismiss="modal" >
          <span>&times;</span>
        </button><br>
        <h4>
          Nuevo Producto
        </h4>
      </div>
      <div class="modal-body">
        <form method="POST" v-on:submit.prevent="createProducts" >
            <div class="form-group center-block" >
              <label for="nombre" >Nombre</label>
              <input type="text" name="nombre" required="" class="form-control" placeholder="Nombre ..."  v-model="newName" >
            </div>
            <div class="form-group float-left" >
              <label for="cantidad" >Cantidad</label>
              <input type="number" name="cantidad"  required="" class="form-control" placeholder=""  v-model="newCantidad" >
            </div>
            <div class="form-group float-right" >
              <label for="estado" >Estado</label>
              <select name="estado" class="form-control"  required=""  v-model="newState">
                <option value="1" >Activado</option>
                <option value="0" >Desactivado</option>
              </select>
            </div>
            <div class="form-group float-right " >
              <label for="bodega" >Bodega</label>
              <select name="bodega" class="form-control"  required=""  v-model="newBodega" >
                <option value="1"  >Centro</option>
                <option value="2" >Oriente</option>
                <option value="3" > Occidente</option>
                <option value="4" > Sur</option>
              </select>
            </div>
            <div class="form-group center-block " >
              <label for="observaciones" >Observaciones</label>
              <textarea class="form-control" name="observaciones" required="" placeholder="Observaciones" v-model="newObservations"  ></textarea>
            </div>

            <div class="form-group center-block " >
              <button class="btn-danger" >
                Enviar Informacion
              </button>
            </div>
            <!-- <span v-for="error of errors" class="text-danger" > @{{error}} </span> -->
        </form>
      </div>
      <div class="modal-footer">

      </div>
    </div>
  </div>
</div>

<div class="modal fate" id="update" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" name="button" data-dismiss="modal" >
          <span>&times;</span>
        </button><br>
        <h4>
          Actualiza tus productos
        </h4>
      </div>
      <div class="modal-body">
        <form  v-on:submit.prevent="UpdateProducts" >
            <div class="form-group center-block" >
              <label for="nombre" >Nombre</label>
              <input type="text" name="nombre" required="" v-model="datosUpdateNombre" class="form-control" placeholder="Nombre ..."  v-model="newName" >
            </div>
            <div class="form-group float-left" >
              <label for="cantidad" >Cantidad</label>
              <input type="number" name="cantidad" v-model="datosUpdateCantidad"  required="" class="form-control" placeholder=""  v-model="newCantidad" >
            </div>
            <div class="form-group float-right" >
              <label for="estado" >Estado</label>
              <select name="estado" class="form-control"  v-model="datosUpdateEstado" required=""  >
                <option value="1" >Activado</option>
                <option value="0" >Desactivado</option>
              </select>
            </div>
            <div class="form-group float-right " >
              <label for="bodega" >Bodega</label>
              <select name="bodega" class="form-control"  required=""  v-model="datosUpdateBodega" >
                <option value="1" >Centro</option>
                <option value="2" >Oriente</option>
                <option value="3" >Occidente</option>
                <option value="4" >Sur</option>
              </select>
            </div>
            <div class="form-group center-block " >
              <label for="observaciones" >Observaciones</label>
              <textarea class="form-control" name="observaciones" required="" placeholder="Observaciones" v-model="datosUpdateObserv"  ></textarea>
            </div>

            <div class="form-group center-block " >
              <button class="btn-danger" >
                Enviar Informacion
              </button>
            </div>
            <!-- <span v-for="error of errors" class="text-danger" > @{{error}} </span> -->
        </form>
      </div>
      <div class="modal-footer">

      </div>
    </div>
  </div>
</div>
