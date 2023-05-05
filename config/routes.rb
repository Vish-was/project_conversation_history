Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :comments, only: :create
    post :change_status, on: :member
    get :history, on: :collection
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
