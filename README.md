## Dog Classes Project

Este proyecto es un clasificador de perros desarrollado como una aplicación web full stack en un periodo de 48 horas. Utiliza tecnologías modernas como Vue 3 y Quasar en el frontend, y PHP Laravel en el backend, con una base de datos relacional MySQL.

### Descripción del Proyecto

La aplicación clasificadora de perros muestra información detallada sobre diferentes razas, incluyendo la raza en sí, el tamaño, el color del pelaje y una foto representativa.

### Instrucciones de Instalación

#### Clonar el Repositorio desde GitHub

- Abre el [repositorio de GitHub](#) en tu navegador.
- Copia el enlace del repositorio.
- En tu carpeta de preferencia. Ejecuta el comando `git clone` en tu terminal seguido del enlace copiado.

#### Backend: Instalar Paquetes y Configuración

1. Ubícate en la carpeta del proyecto, específicamente en la carpeta `backend` a través de tu terminal.
2. Ejecuta `composer install` para instalar las dependencias de Laravel.
3. Renombra el archivo `.env.example` a `.env` y ejecuta `php artisan key:generate` para generar llave en la variable de entorno APP_KEY de la aplicación.

#### Iniciar y Conectar la Base de Datos MySQL

1. Inicia los servicios de Apache y MySQL en XAMPP.
2. Desde el terminal en la carpeta `backend`, ejecuta `php artisan migrate` para crear las tablas en la base de datos. Asegúrate de responder "yes" cuando se te pregunte si deseas crear la base de datos "dogs".

#### Poblar la Base de Datos

1. Accede al administrador de MySQL a través del botón "Admin" en XAMPP.
2. Busca la opción "Importar" en la base de datos `dogs` y selecciona el archivo `dogs.sql` ubicado en la carpeta `sql_dump_file` del proyecto.
3. Importa el archivo para poblar la base de datos con datos de prueba.

#### Opcional: Conectar con Cloudinary (opcional)

- La aplicación ya tiene configurada una cuenta Cloudinary de prueba.
- Si deseas utilizar tu propia cuenta, debes ingresar en la web cloudinary "https://cloudinary.com/users/login" para iniciar sesion, en caso de notener cuenta, puede crear una.
- Ir al apartado de Dashboard en el sidebar y copiar la direccion de `API environment variable`.
- Una vez copiado, debes abrir el archivo `.env` del proyecto en la carpeta backend y bajar al final para buscar `CLOUDINARY_URL=` y seguido sin espacios pegar la direccion de su API environment variable antes copiada.

#### Iniciar el Backend y Realizar Pruebas

1. Ejecuta `php artisan serve` para iniciar el servidor backend.
2. Utiliza Postman para realizar peticiones GET y POST al backend. Ejemplos:
   - GET: `http://127.0.0.1:8000/api/v1/dogs/all`
   - POST: `http://127.0.0.1:8000/api/v1/dogs/store` con datos en el cuerpo de la petición.
        - agregar el body como "form-data" con los siguientes valores:
                - key: "breed" value:"colocar raza"
                - key: "size" value:"colocar tamaño en string"
                - key: "hairColor" value:"colocar el color"
                - agregar un archivo de imagen key:"photo" y la imagen adjunta

#### Detener el Backend (Opcional)

- Si es necesario detener el servidor, usa `Ctrl+C` en el terminal.

#### Frontend: Instalar Paquetes y Ejecutar la Aplicación

1. Abre un nuevo terminal y ubícate en la carpeta `frontend` del proyecto.
2. Ejecuta `npm install` para instalar las dependencias.
3. Una vez instaladas las dependencias, ejecuta `quasar dev` para iniciar el servidor frontend.

Con estos pasos, podrás acceder a la aplicación desde tu navegador y explorar su funcionalidad. ¡Disfruta del proyecto!
