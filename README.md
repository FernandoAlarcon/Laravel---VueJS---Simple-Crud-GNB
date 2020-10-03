# Laravel-Vue
Laravel And vue CRUD El archivo ya tiene previamente las configuraciones realizadas, solo debe seguir lo siguiente pasos para la instalacion y ejecucion.

primero, haga los procedimientos y las instalaciones para que laravel funcione(servidor, composer, etc..) clone el repositorio desde su terminal de Git-Hub(click derecho - Git-Bash-Here), o descargue el archivo .ZIP es preferible que ubique el proyecto dentro de la carpeta del servidor (XAMPP, MAMP, WAMP etc...) vaya a la carpeta database/sql/prueba_productos.sql y exporte el archivo a su gestor de base de datos MySql(preferiblemente), o si prefiere puede hacer las debidas migraciones desde la terminal (php artisan make:migrate -- esto puede contener complicaciones)

abra la consola en la carpeta donde almacenó el archivo descargado (Ctrl+r -- cd///) y ejecute el comando (npm run dev -- npm run watch-poll) para compilar las librerias js(Vue,Axios,Toast,Jquery). Una vez tenga todo esto realizado, vaya su navegador ... http://localhost/laravel-crud/public/

Vue --- Para uso del Front End
Axios --- Peticiones al servidor
Toast --- Notificaciones
Jquery --- Usos varios 

Es un crud basico, pero cumple con los requerimientos pedidos ...
