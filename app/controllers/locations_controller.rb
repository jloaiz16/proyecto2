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
			redirect_to @location #Guarda el modelo en la base de datos
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
		@location = Location.where("user_id LIKE ?", current_user.id)
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
