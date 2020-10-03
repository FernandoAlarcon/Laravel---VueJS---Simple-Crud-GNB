//$(document).ready(function () {
/// documento creado por erick fernando alarcon duran
/// 3232853878

// require('./bootstrap');
// define(function(require) {
//     var namedModule = require('./bootstrap');

//     const { Vue } = require('vue');
//const Vue = require('vue');
//});



//    Vue.component('Welcome-Component', require('./components/Welcome.vue'));

const app = new Vue({
    el: '#survivor',
    created: function() {
        this.getProducts();
    },
    data: {
        products: [],
        pagination: {
            'total': 0,
            'current_page': 0,
            'per_page': 0,
            'last_page': 0,
            'from': 0,
            'to': 0
        },
        newName: '',
        newBodega: '',
        newState: '',
        UpdateState: { 'id_productos': '', 'Estados': '' },
        newCantidad: '',
        newObservations: '',
        errors: '',
        offset: 3,
        query: '',
        datosUpdateNombre:'',
        datosUpdateCantidad:'',
        datosUpdateEstado:'',
        datosUpdateBodega:'',
        datosUpdateObserv:'',
        datosUpdateID:'',
        estadoPeticion:'3'

    },
    computed: {
        isActived: function() {
            return this.pagination.current_page;
        },
        pagesNumber: function() {
            if (!this.pagination.to) {
                return [];
            }

            var from = this.pagination.current_page - this.offset;
            if (from < 1) {
                from = 1;
            }

            var to = from + (this.offset * 2);
            if (to >= this.pagination.last_page) {
                to = this.pagination.last_page;
            }

            var pagesArray = [];
            while (from <= to) {
                pagesArray.push(from);
                from++;
            }
            return pagesArray;
        }
    },
    methods: {
        UpdateProducts: function () {
          var url = '/Update_Products';
          axios.get(url, { params: {
                id_producto:   this.datosUpdateID,
                Nombre_Producto: this.datosUpdateNombre,
                Bodega: this.datosUpdateBodega,
                Estados: this.datosUpdateEstado,
                Cantidad: this.datosUpdateCantidad,
                Observaciones: this.datosUpdateObserv
          }}).then(response => {
              this.getProducts(this.pagination.current_page);
              this.datosUpdateID = '';
              this.datosUpdateNombre = '';
              this.datosUpdateBodega = '';
              this.datosUpdateEstado = '';
              this.datosUpdateCantidad = '';
              this.datosUpdateObserv = '';
              this.errors = [];
              $('#update').modal('hide');
              toastr.success('Producto Actualizado');
          }).catch(error => {
              this.errors = error.response.data
          });
        },
        updateDates: function (products) {

          this.datosUpdateNombre   = products.Nombre_Producto;
          this.datosUpdateCantidad = products.Cantidad;
          this.datosUpdateEstado   = products.Estados;
          this.datosUpdateBodega   = products.Bodega;
          this.datosUpdateObserv   = products.Observaciones;
          this.datosUpdateID       = products.id_productos;
        },
        ChoseSelection: function (e) {
          this.estadoPeticion = e;
          console.log(this.estadoPeticion);
          this.getProducts(this.pagination.current_page);
        },
        getProducts: function(page) {
 
            var urlProducts = 'products?page=' + page;// +'&filtro=' + filtro ;
            var filtro  = this.estadoPeticion;
            if (this.query.length > 2) {
                //var urlProducts = 'products?page=' + page;
                axios.get(urlProducts, { params: { query: this.query, filtro:filtro } }).then(response => {
                    this.products = response.data.tasks.data,
                        this.pagination = response.data.pagination

                });
            } else {
                //var urlProducts = 'products?page=' + page;
                axios.get(urlProducts, { params: { filtro:filtro }}).then(response => {
                    this.products = response.data.tasks.data,
                        this.pagination = response.data.pagination

                });
            }

            //alert('funciona');
        },
        updateProducts: function(product) {

            if (confirm('¿ Desear Actualizar el estado de ' + product.Nombre_Producto + ' ?')) {
                var urlUpdate = `products/${product.id_productos}`;

                if (product.Estados == '0') {
                    this.UpdateState.id_productos = product.id_productos;
                    this.UpdateState.Estados = '1'; //.Estados = '1';

                    var state = '1';
                } else {
                    this.UpdateState.id_productos = product.id_productos;
                    this.UpdateState.Estados = '0'; // .Estados = '0';

                    var state = '0';

                }

                axios.put(urlUpdate, this.UpdateState).then(response => {
                    this.getProducts(this.pagination.current_page); // refrescamos la funcion
                    this.UpdateState = { 'id_productos': '', 'Estados': '' };
                    this.errors = [];
                    toastr.success('State Update Correctly');
                }).catch(error => {
                    this.errors = 'Corrija para poder editar con éxito'
                });
            }

        },
        createProducts: function() {
            var url = 'products';
            axios.post(url, {
                Nombre_Producto: this.newName,
                Bodega: this.newBodega,
                Estados: this.newState,
                Cantidad: this.newCantidad,
                Observaciones: this.newObservations
            }).then(response => {
                this.getProducts(this.pagination.current_page);
                this.newName = '';
                this.newBodega = '';
                this.newState = '';
                this.newCantidad = '';
                this.newObservations = '';
                this.errors = [];
                $('#create').modal('hide');
                toastr.success('Producto Agregado');
            }).catch(error => {
                this.errors = error.response.data
            });
        },
        changePage: function(page) {
            this.pagination.current_page = page;
            this.getProducts(page);
        },
        getKey: function() {
                this.getProducts(this.pagination.current_page);
            }
            // final funtion

    }
});

///});
