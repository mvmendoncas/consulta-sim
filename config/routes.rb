Rails.application.routes.draw do
  root "home_pages#index"
  resources :home_pages do
    resources :medicos
  end
  resources :home_pages do
    resources :pacientes
  end
  resources :medicos do
    resources :consulta
  end
  resources :pacientes do
    resources :consulta
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
