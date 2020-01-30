Rails.application.routes.draw do
  get 'imovel/index'

  resources :cities

  root 'cities#index'

  get 'sign_up' => 'users#sign_up'  
  post 'sign_up' => 'users#create'
    	
  get  'properties/new' => 'properties#new'
  post 'properties/new' => 'properties#create'

  get 'sign_in' => 'users#sign_in'
  post 'sign_in' => 'users#authenticate'
end
