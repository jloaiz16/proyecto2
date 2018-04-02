Rails.application.routes.draw do
  # Defino pagina inicial
  root 'welcome#index'

  # Defino rutas de las localizaciones
  resources :locations

  # Defino ruta de peticion
  get 'welcome/index'

  # Ruta para listar ubicaciones
  get 'welcome/list'

  # Rutas para usuarios
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # Rutas para sesiones
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

end

 