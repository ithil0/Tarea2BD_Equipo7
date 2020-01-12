Rails.application.routes.draw do
  devise_for :users, path: 'users'
  devise_for :employees, path: 'employees'
  devise_for :admins, path: 'admins'
  

  get '/trabajador' => 'index#trabajador'
  get '/usuario' => 'index#usuario'
  get '/admistrador' => 'index#administrador'
  root 'index#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
