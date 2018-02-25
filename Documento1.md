# PROYECTO 2 <h1>
# Tópicos especiales en telemática <h2>

### Definición del equipo, proyecto y aplicación:
__Miembros del equipo y asignación de QA’s:__
* Juan David Loaiza Botero  - Rendimiento 
* Juan Camilo Gomez Ruiz    - Disponibilidad
* Jorge Iván Ortiz Serna    - Seguridad

__Selección de la aplicación basada en Proyecto1:__
La aplicación seleccionada por el equipo de desarrollo fue la del compañero Juan David Loaiza Botero, debido a que los demás proyectos se vieron envueltos en una serie de problemas como el despliegue de la aplicación en Heroku, entre otros. https://github.com/jloaiz16/proyecto1

__Descripción de la aplicación:__
Consiste en una aplicación WEB en tiempo real, que registra la ubicación del usuario cada 5 segundos y muestra la visualización de esta en un mapa de google. Esta aplicación estará optimizada, totalmente disponible y segura.

__Requisitos Funcionales:__
* __RF001 - Gestión de usuarios:__ El sistema permitirá a los usuarios registrarse para poder gestionar la información de su ubicación.
* __RF002 - Validación de usuarios:__ El sistema validará el registro del usuario, para permitir el ingreso y salida del sistema por medio de sesiones.
* __RF003 - Gestión de la ubicación:__ El sistema permitirá al usuario crear, modificar, consultar y eliminar ubicaciones, tanto manualmente como automáticamente cada 5 segundos.
* __RF004 - Visualización de ubicaciones:__ El sistema permitirá al usuario visualizar sus ubicaciones en un mapa de google por medio de marcadores, para que pueda conocer qué ruta a realizado. 

### Detalles técnicos

#### Diseño del sistema:
![diseño](http://img.fenixzone.net/i/Bm5Q0Ps.png)

#### Implementación:
Para el desarrollo de este proyecto se utilizará el lenguaje de programación <tt>Ruby</tt>, el framework de desarrollo <tt>Rails</tt> para el back-end y para el front-end se utilizaron templates propios del lenguaje en este caso para las vistas se utilizó <tt>html.erb</tt> y para la base de datos, en desarrollo se uso <tt>sqlite3</tt>, para test y producción se usó <tt>postgresql</tt>	
	
__Seguridad:__ La dirección IP va a ser segura por medio de certificados oficiales(https) y esto por medio de let’s encrypt. Inicio de sesión único con un proveedor de identidad, que despues de la respectiva validación puede o no acceder a los servicios. Se evitará la interceptación de información presentada entre el servicio interno (visualización de datos) que se complementa con uno externo (mapas de google).

__Disponibilidad:__ El intervalo de tiempo que el sistema estará disponible será 99.99%, se asignan responsabilidades para detectar un posible omisión(error), fallas, notificar a las personas a través de eventos.

__Rendimiento:__

### Data Center Académico:__
* Juan David Loaiza Botero  - 10.131.137.178:3000 
* Juan Camilo Gomez Ruiz    - 10.131.137.177:3000
* Jorge Iván Ortiz Serna    - 10.131.137.194:3000

### Marco-referencia-v1:

#### Disponibilidad
Es la capacidad de un sistema para estar continuamente disponible para los usuarios sin pérdida de servicio,ademas  esta indica el tiempo total que la aplicación o servicio esta disponible para cumplir con los requisitos del usuario final,la disponibilidad es fundamental  para las operaciones y continuidad del negocio.

##### Como se mide
Normalmente cuando se realiza un análisis y una negociación para determinar el objetivo de disponibilidad, se utiliza una medida basada en porcentajes:

__Disponibilidad__ = ((A-B)/A)x100%)

__A =__ Horas comprometidas de disponibilidad.
__B =__ Número de horas fuera de línea (corresponde a las horas de “caida del sistema” durante el tiempo de disponibilidad comprometido).

Porcentaje disponibilidad | Dia de 24 horas       |  Dia de 8 horas         |
------------------------- | --------------------- | ----------------------- |
90%                       | 876 horas(36.5 dias)  | 291.2 horas (12.13 dias)|                
95%                       | 438 horas(18.25 dias) | 145.6 horas (6.07 días) |                            
99.99%                    | 52.56 minutos         | 17.47 minutos           |      
99.999%                   | 5.256 minutos         | 1.747 minutos           | 
            
que patrones usa ?

#### Seguridad

La seguridad de aplicaciones web es una rama de la Seguridad Informática que se encarga específicamente de la seguridad de sitios web, aplicaciones web y servicios web. A un alto nivel, la seguridad de aplicaciones web se basa en los principios de la seguridad de aplicaciones pero aplicadas específicamente a la World Wide Web.

como se mide ?
Se mide en patrones como: Alto, Medio o Bajo.
Alto: 

que patrones usa ?

Balancear riesgo y usabilidad: A mayor complejidad de nuestro sitio, aumenta el riesgo de que se sufra un ataque debido a sus características más elaboradas, es por eso que deben considerarse opciones de seguridad necesarias y sencillas pero eficientes, que ayuden a mitigar cualquier característica que la haga vulnerable.

Rastrear el paso de los datos:  En las aplicaciones web, existen maneras de distinguir los orígenes de los datos y poder así reconocer cuando los datos pueden ser dignos de confianza y cuando no.

Filtrar entradas: El filtrado es una de las piedras angulares de la seguridad en aplicaciones web. Es el proceso por el cual se prueba la validez de los datos. Si nos aseguramos que los datos son filtrados apropiadamente al entrar, podemos eliminar el riesgo de que datos contaminados sean usados para provocar funcionamientos no deseados en la aplicación.
