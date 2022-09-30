# Summary (Resumen)

Crud es una Base de Datos creada con *NODE JS*. Las rutas se configuraron para que posea un acceso controlado por *ID USUARIO* y *CONTRASEÑA*, el cual deriva a la página de productos. Una vez ingresado a esta página se presenta un cuadro con los productos en stock, este cuadro cuenta con los permisos para **modificar los valores de los productos o eliminarlos**, también cuenta con la función de agregar uno o varios productos nuevos según sea requerido, los que deben se agregados de uno por vez.
Para crear la *BASE de DATOS* se utilizó **XAMPP** en conjunto con **phpmyadmin**, además de la utilización de **MySQLWorkbench** para pruebas de funcionamiento en ambos sistemas.

## Motivation (Motivación)

La motivación de este proyecto es la creación de una base de datos local que cumpla con los requisitos solicitados en cuanto a la correcta interacción entre los  algoritmos desarrollados y una base de datos estándar, logrando así el aprendizaje requerido para cumplir con el objetivo.

### To Get Started (Para Empezar)

Instale Node JS en su computador y ejecute en este para dar comienzo al proyecto.

#### Install dependencies (Instalar Dependencias)

npm init para iniciar el proyecto
npm i poniendo en secuencia las dependencias a utilizar separadas por un espacio y luego presionar ENTER

##### Run Crud (Ejecute CRUD)

npm start

### Built With (Construido Con)

- cookie-parser
- debug
- dotenv
- express
- express-session
- hbs
- http-errors
- md5
- morgan
- mysql
- nodemon
- util

### Features (Características)

- Diseño simple, de fácil comprensión y manejo.
- Gran versatilidad para modificar los datos ya sea en su edición, eliminación o en el caso de agregar datos nuevos.

- Está compuesta por la siguiente estructura por orden descendente:
-- **Carpeta bin**: contiene archivos binarios, los cuales son el código ejecutable real para la aplicación o biblioteca.
--**Carpeta models**: contiene el archivo *productsModel.js*, en este archivo se encuentra  el código que especifica la ruta y el requerimiento para acceder a la *BASE DE DATOS* con la cual trabaja el proyecto.
--**Carpeta node_modules**: es un directorio que se crea en la carpeta raíz de nuestro proyecto cuando instalamos *paquetes o dependencias mediante npm*.
--**Carpeta public**: en la cual se encuentran las *subcarpetas*:
---- *images*: la cual contiene todas las imágenes que se visualizan en el proyecto.
---*stylesheets*: la cual contiene el archivo *styles.css (Hojas de Estilo en Cascada)*, en el que se encuentra el código que se utiliza para dar estilo a la página web.
--**Carpeta routes**: contiene los archivos *index.js, listado.js y discografía.js*, en estos archivos se encuentra el código que especifica la ruta y el requerimiento para acceder a las páginas web o viewport del proyecto.
--**Carpeta views**: contiene los archivos *login.hbs, listado.hbs, layout.hbs,  index.hbs, error.hbs, editItem.hbs y addItem.hbs*, los cuales contienen el código que permite que se puedan visualizar las páginas del proyecto, ya que son archivos de visualización (las vistas).
-- **Archivo Enviroment (.env)**: que contiene las variables de entorno y le permite personalizarlas en trabajos individuales.
--**Archivo app.js**: es uno de los archivos más importantes de la aplicación, puesto que es el primer componente que se cargará y por lo tanto es el componente que contiene toda la aplicación del proyecto.
--**Archivo db.js**: en este archivo se encuentran cargadas las  dependencias que se requieres para acceder a la *BASE DE DATOS* con la cual trabaja el proyecto.
--**Archivo dblosprisioneros.sql**: este archivo contiene la información requerida para crear la base *BASE DE DATOS* para levantar el proyecto.
--**Archivo package.json**: es un archivo generado automáticamente cuando se instalan paquetes o dependencias en el proyecto. Su finalidad es mantener un historial de los paquetes instalados y optimizar la forma en que se generan las dependencias del proyecto y los contenidos de la carpeta node_modules/.
--**Archivo package-lock.json**: es un archivo generado automáticamente cuando se instalan paquetes o dependencias en el proyecto. Su finalidad es mantener un historial de los paquetes instalados y optimizar la forma en que se generan las dependencias del proyecto y los contenidos de la carpeta node_modules/.

### Extra Information (Información Extra)

- El PROYECTO cuenta con el  archivo **dblosprisioneros.sql**, el cual contiene la información requerida para crear la base de datos:
- **Nombre de la DB: dblosprisioneros**
- **Nombre de la TABLA: discografia**
- **Nombre de la TABLA: users**
- El Proyecto cuenta con  el archivo de word **Data Base para agregar al Login y Usuario, Contraseña.docx** el que contiene información para agregar a la base de datos.

## ViewPort

Primero activar la base de datos con **XAMPP** y [http://localhost/dashboard/](http://localhost/dashboard/), con **MySQLWorkbench** o el entorno de bases de datos del que disponga.
Para visualizar, ejecute la aplicación en el modo de desarrollo.\
Abra [http://localhost:3000](http://localhost:3000) para verlo en su navegador. el cual se puede modificar dependiendo de la necesidad.

## LOGIN

Login del  Usuario y Contraseña
INSERT INTO `users` (`user_id`, `user_name`, `user_pass`) VALUES ('01', 'luismagana', MD5('120278'));
