Rails.application.routes.draw do
  resources :contributions
 
  root 'contributions#new'
  get '/donate', to: 'contributions#index'
end
