Rails.application.routes.draw do
  resources :empresas
  resources :servicios
  resources :enfermedadesoculares
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'enfermedadesoculares/destroy'
  post 'servicios/destroy'
  post 'empresas/destroy'
end
