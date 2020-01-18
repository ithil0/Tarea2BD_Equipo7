Rails.application.routes.draw do
  devise_for :employees
  resources :categories 
  resources :productos 
  resources :productos
  devise_for :users, path: 'users'
  resources :order_items
  devise_for :admins, path: 'admins'

#do get 'users/sign_out' => 'devise/sessions#destroy' end
  
  get '/trabajador' => 'index#trabajador'
  get '/usuario' => 'index#usuario'
  get '/administrador' => 'index#administrador'
  get '/catalogo' => 'productos#catalogo'
  root 'index#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
