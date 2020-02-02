Rails.application.routes.draw do

  devise_for :users
  resources :agrupamentos do
    resources :escuteiros
    get '/admin_agrupamento', to: 'dashboard#admin_agrupamento', as: 'admin_agrupamento'
    get '/primeira_seccao', to: 'dashboard#primeira_seccao', as: 'primeira_seccao'
    get '/segunda_seccao', to: 'dashboard#segunda_seccao', as: 'segunda_seccao'
    get '/terceira_seccao', to: 'dashboard#terceira_seccao', as: 'terceira_seccao'
    get '/quarta_seccao', to: 'dashboard#quarta_seccao', as: 'quarta_seccao'
  end

  get '/admin_manager', to: 'dashboard#admin_manager', as: 'admin_manager'

  resources :usuarios
  resources :regioes
  root 'dashboard#index'
end
