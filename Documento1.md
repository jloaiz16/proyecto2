# PROYECTO 2 <h1>
# Tópicos especiales en telemática <h2>

* __Definición del equipo, proyecto y aplicación:__
	* a. Miembros del equipo y asignación de QA a miembros del equipo
		Juan David Loaiza Botero  - Rendimiento 
	 	Juan Camilo Gomez Ruiz   - Disponibilidad
 	 	Jorge Iván Ortiz Serna        - Seguridad 
	* b. Selección de la aplicación basada en Proyecto1
La aplicación seleccionada por el equipo de desarrollo fue la del compañero Juan David Loaiza Botero, debido a que los demás proyectos se vieron envueltos en una serie de problemas como el despliegue de la aplicación en Heroku, entre otros.
https://github.com/jloaiz16/proyecto1
* c. Descripción de la aplicación
Consiste en una aplicación WEB en tiempo real, que registra la ubicación del usuario cada 5 segundos y muestra la visualización de esta en un mapa de google. Esta aplicación estará optimizada, totalmente disponible y segura.
	* d. Requisitos Funcionales
__RF001 - Gestión de usuarios:__ El sistema permitirá a los usuarios registrarse para poder gestionar la información de su ubicación.
__RF002 - Validación de usuarios:__ El sistema validará el registro del usuario, para permitir el ingreso y salida del sistema por medio de sesiones.
__RF003 - Gestión de la ubicación:__ El sistema permitirá al usuario crear, modificar, consultar y eliminar ubicaciones, tanto manualmente como automáticamente cada 5 segundos.
__RF004 - Visualización de ubicaciones:__ El sistema permitirá al usuario visualizar sus ubicaciones en un mapa de google por medio de marcadores, para que pueda conocer qué ruta a realizado. 

* __Detalles técnicos:__
Diseño del sistema:
![diseño](http://img.fenixzone.net/i/Bm5Q0Ps.png)
       2.  Implementacion:
Para el desarrollo de este proyecto se utilizará el lenguaje de programación <tt>Ruby</tt>, el framework de desarrollo <tt>Rails</tt> para el back-end y para el front-end se utilizaron templates propios del lenguaje en este caso para las vistas se utilizó <tt>html.erb</tt> y para la base de datos, en desarrollo se uso <tt>sqlite3</tt>, para test y producción se usó <tt>postgresql</tt>	
	
Seguridad: La dirección IP va a ser segura por medio de certificados oficiales(https) y esto por medio de let’s encrypt

Disponibilidad:

Rendimiento:
* __Data Center Académico:__
	Juan David Loaiza Botero  - 10.131.137.178:3000 
	Juan Camilo Gomez Ruiz   - 10.131.137.177:3000
 	Jorge Iván Ortiz Serna        - 10.131.137.194:3000
* __Marco-referencia-v1:__

