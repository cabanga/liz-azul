Rails.application.routes.draw do

  resources :agrupamentos do
    resources :escuteiros
    get '/admin_agrupamento', to: 'dashboard#admin_agrupamento', as: 'admin_agrupamento'
    get '/primeira_seccao', to: 'dashboard#primeira_seccao', as: 'primeira_seccao'
    get '/segunda_seccao', to: 'dashboard#segunda_seccao', as: 'segunda_seccao'
    get '/terceira_seccao', to: 'dashboard#terceira_seccao', as: 'terceira_seccao'
    get '/quarta_seccao', to: 'dashboard#quarta_seccao', as: 'quarta_seccao'
  end

  get '/admin_seccoes', to: 'dashboard#admin_seccoes', as: 'admin_seccoes'

  
  resources :regioes

  root 'dashboard#index'
end
