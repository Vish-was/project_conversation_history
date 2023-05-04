Rails.application.routes.draw do
  get 'comments/create'
  resources :projects
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :comments
    post :change_status, on: :member
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
