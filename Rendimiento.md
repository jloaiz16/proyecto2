# QA - Rendimiento<h1>
# Proyecto 2 - Tópicos especiales en telemática <h2>

### 1. Redundancia de datos:
Se modificó la lógica del front-end, los scripts encargados de capturar la ubicación gps del usuario validarán cada registro capturado cada segundo y si la diferencia del registro nuevo no es mayor a un delta pequeño el registro no será guardado ya que la persona se encuentra en el mismo lugar. Esto evita la redundancia de datos y sobrecarga de datos en la base de datos, permitiendo consultas más rápidas.

```javascript

  function validateData(lat_new, lot_new) {
    lat_new = Math.abs(lat_new);
    lot_new = Math.abs(lot_new);
    if (lat_new-last_lat > delta && lot_new-last_lot > delta) {
      return true;
    }else{
      return false;
    }
  }

```

### 2. Carga de datos al visualizar ubicaciones:
Inicialmente en la vista de las ubicaciones se cargaban todos los registros en conjunto al mapa de google para visualizarlos, permitiendo que el usuario pudiera modificar/eliminar/consultar los registros. Pero esto, aumentaba el tiempo de respuesta de carga de la visualización, por lo cual se separaron los registros de la visualización en el mapa, permitiendo que al realizar la petición de visualización el tiempo de carga fuera menor.

```html
  <div style="width: 75%; margin:0 auto; margin-top:50px;">
    <table style="width: 100%;">
      <tr>
        <th>Latitud</th>
        <th>Longitud</th>
        <th>Direccion</th>
        <th>Descripcion</th>
        <th>Titulo</th>
        <th colspan="3">Opciones</th>
      </tr>

      <% @location.each do |location| %>
        <tr>
          <td><%= location.latitude %></td>
          <td><%= location.longitude %></td>
          <td><%= location.addres %></td>
          <td><%= location.description %></td>
          <td><%= location.title %></td>
          <td><%= link_to location_path(location) do %>
              <i class="fa fa-bars"></i>
              <% end %>
          </td>
          <td><%= link_to edit_location_path(location) do %>
              <i class="fa fa-edit"></i>
              <% end %>
          </td>
          <td><%= link_to location_path(location),
                      method: :delete, data: { confirm: '¿Esta seguro que desea eliminar esta ruta?' } do %>
              <i class="fa fa-archive"></i>
              <% end %>
          </td>
        </tr>
      <% end %>
    </table>
  </div>
```

### 3. Indexación de datos en los registros de la base de datos:
Las consultas a la base por lo general juegan el papel más importante en el rendimiento de una aplicación. Cargando demasiados datos en la memoria, N + 1 consultas, la falta de valores almacenados en caché, y la falta de bases de datos de índices adecuados son los culpables más grandes que pueden causar las solicitudes lentas. Sin un índice, el motor de base de datos tendría que comprobar cada registro de la tabla proyectos, uno por uno, hasta que se encuentre una coincidencia. Sin embargo, si introducimos un índice en la tabla de nuestro proyecto, la búsqueda será mucho más rápida.

```ruby
    class AddIndexToUsers < ActiveRecord::Migration
      def change
        add_index(:users, [:email, :sign_in_count])
        add_index :users, :location_id
      end
    end
```
En `schema.rb`
```ruby
    add_index "locations", ["user_id"], name: "index_locations_on_user_id"
```
Con esto se podrán hacer las consultas de las ubicaciones de cada usuario más rápido por medio del `user_id` y `location_id` en las indexaciones.

#### Ejemplo
Consulta a la base de datos __sin indexación__ de datos:
![consulta1](http://img.fenixzone.net/i/WhCcXzk.jpeg)

Consulta a la base de datos __con indexación__ de datos:
![consulta2](http://img.fenixzone.net/i/qbiwsJU.jpeg)
