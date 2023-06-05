Rails.application.routes.draw do
  resources :articles do 
    resources :comments, only: [:new, :create, :destroy]
  end
  get 'static_pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"
end
