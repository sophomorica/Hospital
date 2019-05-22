Rails.application.routes.draw do
  root "static_pages#home"

  resources :users
  resources :doctors do 
    resources :appointments, only: [:index, :new, :create, :destroy]
  end

end

