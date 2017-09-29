Rails.application.routes.draw do
  resources :contributions
 
  root 'contributions#index'
end
