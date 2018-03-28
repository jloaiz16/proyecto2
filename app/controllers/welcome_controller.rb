class WelcomeController < ApplicationController
  before_filter :authorize

  # Definimos la accion index para lanzar la vista
  def index
  end

  #GET list
  def list
    @location = current_user.locations
  end
  
end
