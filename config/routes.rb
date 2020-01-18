Rails.application.routes.draw do
  resources :agrupamentos do

  end
  
  resources :regioes
  root 'dashboard#index'
end
