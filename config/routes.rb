Rails.application.routes.draw do
  root "home_pages#index"
  resources :home_pages do
    resources :medicos
  end
  resources :home_pages do
    resources :pacientes
  end
  resources :home_pages do
    resources :consulta
  end
  resources :consulta
  resources :medicos
  resources :pacientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
