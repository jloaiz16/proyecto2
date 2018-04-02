class SessionsController < ApplicationController

  #GET /login
  def new
    @user = User.new
  end

  #POST /login - Crear una session
  #def create
    #@user= Usergoogle.from_omniauth(env["omniauth.auth"])
  	#@user = User.find_by_email(params[:email]) #Busca el usuario
  	#Si existe y la contraseña es la correta crea la sesion
  	#if @user && @user.authenticate(params[:password])
  		#Guardo el ID del usuario en las coockies del navegador
  	 #session[:user_id] = @user.id
  		#redirect_to '/'
  	#else
  		#redirect_to '/login'
  	#end
  #end

  #GET /logout
  #def destroy
  	#session.delete(:user_id)
  	#session[:user_id] = nil
  	#redirect_to '/login'
  #end

  def create
    @user = Usergoogle.from_omniauth(env["omniauth.auth"])
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
