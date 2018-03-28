# PROYECTO 2 - Documento 3<h1>
# Tópicos especiales en telemática <h2>

### 1. Miembros del equipo
* Juan David Loaiza Botero  - Rendimiento
* Juan Camilo Gomez Ruiz    - Disponibilidad
* Jorge Iván Ortiz Serna    - Seguridad

### 2. Diseño de arquitectura de la Aplicación y Sistema
	* Vista de desarrollo
	* Vista de despliegue

### 3. Implementación y Pruebas por Atributo de Calidad
	* Implementación
	* Esquemas de pruebas para comprobar el Atributo de Calidad

### 4. Marco-referencia-v3:

### Disponibilidad
Es la capacidad de un sistema para estar continuamente disponible para los usuarios sin pérdida de servicio,además esta indica el tiempo total que la aplicación o servicio esta disponible para cumplir con los requisitos del usuario final,la disponibilidad es fundamental  para las operaciones y continuidad del negocio.

#### Cómo se mide
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

#### Patrones

* __Failover:__ Durante los escenarios de carga máxima, la capacidad del sistema para estar operativo en un evento de una falla de nodo o componente

* __Failback:__ Generalmente ocurre después de failover, donde el nodo primario o primario el sitio se recuperará de la falla y estará en pleno funcionamiento

* __Replicación:__ Esto implica copiar los datos del nodo primario a toda su copia de seguridad y nodos en espera para que sea fácil cambiar en caso de conmutación por error.

* __Virtualización:__ Las interrupciones causadas por el hardware y el sistema operativo pueden ser reducido mediante el empleo de la virtualización. La virtualización proporciona muchas ventajas tales como distribución de carga y enrutamiento de solicitud, y permite a los administradores del sistema mejorar el
hardware subyacente sin problemas; todo esto tendrá un impacto positivo en la disponibilidad general.

* __Mantenimiento continuo:__ Las actividades regulares de mantenimiento para los componentes de hardware son clave para mantener la infraestructura en buen estado de salud. El mantenimiento regular aumenta la confiabilidad del hardware, asegura operaciones confiables y extiende la vida general del hardware.


### Seguridad

La seguridad de aplicaciones web es una rama de la Seguridad Informática que se encarga específicamente de la seguridad de sitios web, aplicaciones web y servicios web. A un alto nivel, la seguridad de aplicaciones web se basa en los principios de la seguridad de aplicaciones pero aplicadas específicamente a la World Wide Web.

#### Cómo se mide

* __Riesgos:__ La aplicación web posee una serie de riesgos los cuales son medidos en escalas de: Alto, Medio o Bajo .

* __Impacto del riesgo:__ Es la manera en la cual impacta el riesgo a la aplicación web, son medidos en escalas de: Alto, Medio o Bajo.

* __Impacto general:__ Es el resultante entre la evaluación de la posibilidad de que el riesgo se presente y el mismo impacto causante en el sistema de dicho riesgo. Son medidos en escalas de: Alto, Medio o Bajo.

#### Patrones y buenas prácticas

* __Balancear riesgo y usabilidad:__ A mayor complejidad de nuestro sitio, aumenta el riesgo de que se sufra un ataque debido a sus características más elaboradas, es por eso que deben considerarse opciones de seguridad necesarias y sencillas pero eficientes, que ayuden a mitigar cualquier característica que la haga vulnerable.

* __Rastrear el paso de los datos:__  En las aplicaciones web, existen maneras de distinguir los orígenes de los datos y poder así reconocer cuando los datos pueden ser dignos de confianza y cuando no.

* __Filtrar entradas:__ El filtrado es una de las piedras angulares de la seguridad en aplicaciones web. Es el proceso por el cual se prueba la validez de los datos. Si nos aseguramos que los datos son filtrados apropiadamente al entrar, podemos eliminar el riesgo de que datos contaminados sean usados para provocar funcionamientos no deseados en la aplicación.

* __Escapado de salidas:__ Codificar o decodificar caracteres especiales de tal forma que su significado original sea preservado. Si llegamos a utilizar una codificación en particular es necesario conocer los caracteres reservados los cuales serán necesarios escapar.

* __Confidencialidad:__ Los datos no deben divulgarse a usuarios no autorizados o sin intención. Los datos comerciales, la información personal del usuario y los datos de propiedad intelectual se incluirán en esta categoría


* __Integridad:__ Los datos no deben modificarse involuntariamente ni por usuarios no autorizados. La integridad de los datos se debe mantener cuando los datos se transmiten y cuando son persistió.

* __Disponibilidad:__ Los datos y servicios deberían estar funcionando todo el tiempo.

### Rendimiento

La optimización de un sistema se caracteriza por aspectos como:
* __Latencia:__ Es el tiempo necesario para la primera respuesta del servidor.
* __Rendimiento:__ Es el número total de transacciones que el sistema puede procesar en un intervalo de tiempo dado.

#### Cómo se mide

La capacidad de un sistema se mide por medio de la ley de Little (L = A x W), donde:
* __L:__ Promedio de requerimientos en un sistema estable
* __A:__ Promedio de llegadas
* __W:__ Tiempo de atención por servicio

##### Ejemplo
* 100 solicitudes web por segundo
* 0.5 s para atender cada solicitud
* L = 100 * 0.5 = 50 solicitud concurrentemente

#### Patrones y buenas prácticas

* Adoptar arquitectura orientada a servicios (SOA) para todas las interfaces servicios de apoyo
* Use una alternativa de servicio ligera como REST a diferencia de a otras opciones pesadas como SOAP
* Use llamadas asíncronas para evitar el bloqueo
* Minimizar el número de llamadas a la interfaz de origen
* Almacenar en caché los resultados de los servicios de uso frecuente
* Llamadas por lotes a la interfaz de origen
* Establecer SLA de rendimiento claro para todos los niveles superiores y sistemas de integración aguas abajo
* Usar formatos de intercambio de datos ligeros y rápidos como JSON en comparación con XML
* Exponer el componente de integración como un lado conectable del cliente componente como widget o un portlet
* Establecer mensajes e íconos intuitivos para indicar en progreso actas
* Usar conceptos de diseño receptivos para lograr optimizados rendimiento en todos los canales
* Establecer tiempos de espera aceptables para el negocio con interfaces en caso de condiciones de excepción
* Pruebe el comportamiento de respuesta de la interfaz en caso de excepción. El código de error y la descripción del error deberían proporcionar un amplia indicación de la causa raíz de la excepción
* Simular y probar a fondo todos los posibles escenarios de excepción como escenario de indisponibilidad de servicio, escenario lento de red, y escenario de alto volumen de tráfico
* Integrar y probar temprano y a menudo
* Hacer pruebas multidispositivas y multiusuario
