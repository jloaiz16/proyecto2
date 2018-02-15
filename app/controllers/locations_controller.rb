class LocationsController < ApplicationController
	before_filter :authorize

	#GET locations/new
	def new
		@location = Location.new
	end
	
	#POST locations/
	def create
		@location = current_user.locations.new(location_params) #Extrae los parametros
		if @location.save 
			respond_to do |format|
    			format.html { redirect_to new_location_path }
    			format.js { }
				#redirect_to @rute #Guarda el modelo en la base de datos
			end
		else
			render 'new'
		end
	end

 	#DELETE /locations/:id(
	def destroy
  		@location = Location.find(params[:id])
	  	@location.destroy
 
  		redirect_to locations_path
	end

	#GET locations/:id - muestra el elemento creado
	def show
		@location = Location.find(params[:id])
	end

	#GET locations/ - lista de elemento creados
	def index
		@location = Location.where("user_id::varchar LIKE ?", current_user.id::varchar)
		@hash = Gmaps4rails.build_markers(@location) do |rutes, marker|
  			marker.lat rutes.latitude
  			marker.lng rutes.longitude
  			#marker.infoWindow rutes.description
  			marker.json({ title: rutes.title})
  		end
	end

	#GET locations/:id/edit - retorna informacion para editar
	def edit
		@location = Location.find(params[:id])
	end

	#PATCH locations/:id
	def update 
		@location = Location.find(params[:id])

		if @location.update(location_params)
			redirect_to @location
		else
			render 'edit'
		end
	end

	private
		def location_params #Por seguridad debemos especificar a rails que parametros vamos a recibir
			params.require(:location).permit(:latitude, :longitude, :addres, :description, :title)
		end
end
