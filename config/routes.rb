Rails.application.routes.draw do
  # Defino pagina inicial
  root 'welcome#index'

  # Defino ruta de peticion
  get 'welcome/index'
end
