Rails.application.routes.draw do
  resources :subscrytion_years
  resources :scouts
  get 'site/index'
  devise_for :users
  root 'site#index'
  get '/dashboard',       to: 'dashboard#index',   as: 'dashboard'

  #get '/mentorias/spot/learning/:id',  to: 'lessons#learning_spot',     as: 'learning_spot'
end
