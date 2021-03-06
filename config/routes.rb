Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about/:page', to: 'about#index', as: :about
  get '/classes/:page', to: 'classes#index', as: :classes

  namespace :admin do
    root 'main#index'

    resources :pages, except: [:index, :new]
  end
end
