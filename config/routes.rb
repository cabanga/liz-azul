Rails.application.routes.draw do


  resources :confirmations
  get '/confirmation/:id',         to: 'confirmations#confirmation_scout', as: 'confirmation_scout'

  resources :sections
  resources :positions
  resources :scouts

  devise_for :users
  root 'site#index'
  get '/dashboard',                 to: 'dashboard#index',   as: 'dashboard'
  get '/consultar-escuteiro',       to: 'site#scout_search',   as: 'scout_search'

  get '/dashboard/lobitos',         to: 'dashboard#lobitos',    as: 'lobitos'
  get '/dashboard/juniores',        to: 'dashboard#juniores',   as: 'juniores'
  get '/dashboard/seniores',        to: 'dashboard#seniores',   as: 'seniores'
  get '/dashboard/caminheiros',     to: 'dashboard#caminheiros',as: 'caminheiros'
  get '/dashboard/dirigentes',      to: 'dashboard#dirigentes', as: 'dirigentes'

  
end
